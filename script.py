import tryashtools as tat
import PIL.Image
import itertools
import numpy as np
import json
import yaml
import os
import math

# keeps track of all the object definitions
class SpriteCollection:
  def __init__(self, data, anim_frames):
    self.data = data
    self.anim_frames = anim_frames
    self.objects = {}
    self.overlays = {}
    self.properties = {}
    self.palettes = data['palettes']
    for name,prop in data['properties'].items():
      self.properties[name] = Metadata(name, prop['type'], prop.get('values'), prop.get('default'), prop['attributes'])
    self.properties['color'] = Metadata('color', 'score', list(self.palettes['default'].keys()), None, ['spawn'])
    self.grids = self.generate_grids()

  def get_obj(self, name, overlay):
    source = self.overlays if overlay else self.objects
    if name in source:
      return source[name]
    obj = BabaObject(name, overlay)
    source[name] = obj
    return obj

  def permute(self, properties):
    return list(dict(zip(properties, x)) for x in itertools.product(*properties.values()))

  def generate_grids(self):
    grids = []
    for grid in self.data['grids']:
      # we need a separate grid for each frame of idle animation
      anim_grids = [[] for x in range(self.anim_frames)]
      coords = None
      (width, height) = grid['size']
      colorgrid = []
      for sheetname, sheetdata in grid['sheets'].items():
        # load the spritesheet PNG and filter out the background color
        image = PIL.Image.open(os.path.join('sprites', sheetname+'.png')).convert('RGBA')
        array = np.array(image, dtype=np.ubyte)
        mask = (array[:,:,:3] == (84, 165, 75)).all(axis=2)
        alpha = np.where(mask, 0, 255)
        array[:,:,-1] = alpha
        image = PIL.Image.fromarray(np.ubyte(array))
  
        for config in sheetdata:
          objlist = config.get('objects', [])
          overlist = config.get('overlays', [])
          for source in (objlist, overlist):
            for obj in source:
              # if coords are unspecified, move to the next row
              if coords is not None:
                coords[1] += (height+1) * frames
              if obj is None:
                continue
              coords = obj.get('coords', coords)
              framedir = obj.get('frames', 'down')
              frames = 1 if framedir == 'none' else self.anim_frames
              shared  = obj.get('shared', [obj])
              # expand sprite definitions from shorthands to a complete list of all sprites
              sprites = []
              for spr in config['sprites']:
                if type(spr) is dict and 'permute' in spr:
                  sprites.extend(self.permute(spr['permute']))
                else:
                  sprites.append(spr)
              for obj in shared:
                # create the object, or find an existing one if the object's sprites appear on multiple rows (e.g. text)
                baba = self.get_obj(obj['name'], source == overlist)
                if 'overlays' in obj:
                  baba.overlays.extend(obj['overlays'])
                if 'modifications' in obj:
                  for k,v in obj['modifications'].items():
                    baba.property_mods[k] = v

              for i,sp in enumerate(sprites):
                spriteset = []
                for objid, obj in enumerate(shared):
                  spr = sp if type(sp) is str else sp.copy()
                  if type(sp) is list:
                    spr = sp[objid].copy()
                  baba = self.get_obj(obj['name'], source == overlist)
                  spr_coords = coords
                  if spr == 'text':
                    adding = self.get_obj('text', False)
                    color = obj.get('text color', obj.get('color'))
                    spr = {'text': obj['name'], 'part': 'noun'}
                    spr_coords = obj.get('text coords', spr_coords)
                  else:
                    adding = baba
                    color = obj.get('object color', obj.get('color'))
                  # include properties specific to this object, or this sprite
                  spr['color'] = color
                  if sp != 'text' and 'properties' in obj:
                    for k,v in obj['properties'].items():
                      spr[k] = v
                  if sp != 'text' and 'properties' in config:
                      for k,v in config['properties'].items():
                        spr[k] = v
                  # make keys the actual metadata objects instead of their names
                  props = {}
                  if adding.name == 'text':
                    props[self.properties['z_layer']] = 20
                  for k,v in spr.items():
                    if k in baba.property_mods and k not in self.properties:
                      self.properties[k] = Metadata(k, 'mod', None, None, ['sprite'])
                    props[self.properties[k]] = v
                  # finalize the sprite and add each anim frame to its respective grid
                  sprite = BabaSprite(adding, None, props, width, height, obj.get('shift', [0,0]))
                  adding.sprites.append(sprite)
                  if spr_coords != coords:
                    self.add_to_grids(i, [sprite], image, anim_grids, spr_coords, framedir)
                  else:
                    spriteset.append(sprite)
                self.add_to_grids(i, spriteset, image, anim_grids, coords, framedir)
      anim_grids = [Grid(x, width, height, grid.get('scale', 1), '#00000000') for x in anim_grids]
      grids.append(anim_grids)
    return grids

  def add_to_grids(self, i, sprites, image, anim_grids, coords, framedir):
    for n,g in enumerate(anim_grids):
      x, y = coords
      w, h = (sprites[0].width, sprites[0].height)
      if framedir == 'down':
        img = image.crop((x+((w+1)*i),y+((h+1)*n),x+((w+1)*i)+w,y+((h+1)*n)+h))
      elif framedir == 'right':
        img = image.crop((x+((w+1)*n),y+((h+1)*i),x+((w+1)*n)+w,y+((h+1)*i)+h))
      elif framedir == 'none':
        img = image.crop((x,y+((h+1)*i),x+w,y+((h+1)*i)+h))
      if n == 0:
        for s in sprites:
          s.image = img
      g.append((sprites, img))

  def create_summon(self, sprite, properties):
    types = {}
    for k,v in properties.items():
      if k.kind not in types:
        types[k.kind] = {}
      types[k.kind][k] = v
    commands = []
    for t,vals in types.items():
      if t == 'tag':
        # if the metadata value is set to a bool, we just check for a tag by that name
        # if it's set to a string (like text 'part'), we check for a tag of the form <metadata>.<value>
        for prop,val in vals.items():
          if type(val) is bool:
            commands.append(f'tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add {prop.name}')
          else:
            commands.append(f'tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add {prop.name}.{val}')
      elif t == 'score':
        for prop,val in vals.items():
          # for scores that are represented with strings, use the index of the values list
          # add 1 because I prefer facing to be 1/2/3/4 instead of 0/1/2/3
          commands.append(f'scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] {prop.name} {val if type(val) is int else prop.values.index(val)+1}')
    return commands

  def create_storage(self, sprite, properties, mode):
    types = {}
    for k,v in properties.items():
      if k.kind not in types:
        types[k.kind] = {}
      types[k.kind][k] = v
    if mode == 'create':
      for k in self.properties.values():
        if 'all' in k.attributes:
          if k.kind not in types:
            types[k.kind] = {}
          if k not in types[k.kind]:
            types[k.kind][k] = k.default
    nbt = []
    data = [] if mode == 'check_props' else [f'sprite:"{sprite.parent.name}"']
    tags = []
    if mode == 'create':
      tags.append('baba.object')
      if sprite.parent.name == 'text':
        tags.append('is_text')
    for t,vals in types.items():
      if t == 'tag':
        tags.extend(list(map(lambda x: x[0].name+'.'+x[1] if type(x[1]) is str else x[0].name, filter(lambda x: type(x[1]) is str or x[1], vals.items()))))
      elif t == 'score':
        scores = []
        for prop,val in vals.items():
          scores.append(f'{prop.name}:{val if type(val) is int else prop.values.index(val)+1}')
        nbt.append('scores:{'+','.join(scores)+'}')
      elif t == 'nbt':
        for prop,val in vals.items():
          v = val
          if type(v) is bool:
            v = '1b' if v else '0b'
          elif type(v) is str:
            v = '"'+v+'"'
          data.append(prop.name+':'+v)
    if len(tags) > 0:
      nbt.append('tags:['+','.join(['"'+x+'"' for x in tags])+']')
    if len(data) > 0:
      nbt.append('data:{'+','.join(data)+'}')
    return ','.join(nbt)


class BabaObject:
  def __init__(self, name, is_overlay):
    self.name = name
    self.sprites = []
    self.overlays = []
    self.property_mods = {}
    self.is_overlay = is_overlay

  # get sprites that are unique when filtering by an attribute
  # for example, baba has many sprites, but only 4 are unique with respect to the facing property
  def filter_sprites(self, attribute):
    sprites = {}
    for s in self.sprites:
      props = s.filter_properties(attribute)
      if not any(map(lambda x: x == props, sprites.values())):
        sprites[s] = props
    return sprites


class BabaSprite:
  def __init__(self, obj, image, properties, width, height, shift):
    self.parent = obj
    self.image = image
    self.properties = properties
    self.width = width
    self.height = height
    self.shift = shift

  # return a copy of properties, only including metadata with the given attribute
  def filter_properties(self, attribute):
    props = self.properties.copy()
    for p in self.properties:
      if attribute not in p.attributes:
        del props[p]
    return props

  def score_check(self, prop, value):
    if type(value) is int:
      return str(value)
    if type(value) is list:
      return f'{value[0]}..{value[1]}'
    if type(value) is str:
      return str(prop.values.index(value)+1)

  # lots of repeated code from create_summon above
  def create_selector(self, properties, include_sprite, scores = None):
    types = {}
    for k,v in properties.items():
      if k.kind not in types:
        types[k.kind] = {}
      types[k.kind][k] = v
    result = []
    nbt_true = []
    nbt_false = []
    tags = []
    scores = scores if scores is not None else []
    if include_sprite:
      nbt_true.append('sprite:"'+self.parent.name+'"')
    for t,vals in types.items():
      if t == 'tag':
        tags.extend([('' if (type(x[1]) is str or x[1]) else '!') + (x[0].name+'.'+x[1] if type(x[1]) is str else x[0].name) for x in vals.items()])
      elif t == 'score':
        scores.extend([x[0].name+'='+self.score_check(x[0], x[1]) for x in vals.items()])
      elif t == 'property':
        trues = list(filter(lambda x: x[1], vals.items()))
        falses = list(filter(lambda x: not x[1], vals.items()))
        if len(trues) > 0:
          nbt_true.append('properties:['+','.join(['"'+x.name+'"' for x in vals])+']')
        if len(falses) > 0:
          nbt_false.append('properties:['+','.join(['"'+x.name+'"' for x in vals])+']')
      elif t == 'nbt':
        for prop,val in vals.items():
          v = val
          if type(v) is bool:
            v = '1b' if v else '0b'
          elif type(v) is str:
            v = '"'+v+'"'
          nbt_true.append(prop.name+':'+v)
    if len(tags) > 0:
      result.append(','.join(['tag='+x for x in tags]))
    if len(scores) > 0:
      result.append('scores={'+','.join([x for x in scores])+'}')
    if len(nbt_true) > 0:
      result.append('nbt={data:{'+','.join(nbt_true)+'}}')
    if len(nbt_false) > 0:
      result.append('nbt=!{data:{'+','.join(nbt_false)+'}}')
    return ','.join(result)

  def display_val(self, val):
    if type(val) is list:
      return f'{val[0]}-{val[1]}'
    return str(val).lower()

  def display(self, properties, sep1, sep2, sep3):
    if len(properties) == 0:
      return self.parent.name
    result = self.parent.name + sep1
    for k,v in properties.items():
      if 'primary' in k.attributes:
        result += self.display_val(v) + sep3
    for k,v in properties.items():
      if 'primary' not in k.attributes:
        result += k.name + sep2 + self.display_val(v) + sep3
    result = result[:-1]
    return result


class Grid:
  def __init__(self, spritelist, sprite_width, sprite_height, scale, color):
    self.scale = scale
    self.width = math.ceil(math.sqrt(len(spritelist)))
    self.height = math.floor(math.sqrt(len(spritelist)))
    self.image = PIL.Image.new('RGBA', (sprite_width*self.width, sprite_height*self.height), color)
    self.sprites = [[[] for x in range(self.width)] for x in range(self.height)]
    self.placements = {}
    x = 0
    y = 0
    tupcol = PIL.ImageColor.getrgb(color)
    for sprites,image in spritelist:
      PIL.Image.Image.paste(self.image, image, (x*sprite_width, y*sprite_height), image)
      if self.image.getpixel((x*sprite_width, y*sprite_height))[3] == 0:
        self.image.putpixel((x*sprite_width, y*sprite_height), (tupcol[0],tupcol[1],tupcol[2],10))
      if self.image.getpixel((x*sprite_width+image.width-1, y*sprite_height+image.height-1))[3] == 0:
        self.image.putpixel((x*sprite_width+image.width-1, y*sprite_height+image.height-1), (tupcol[0],tupcol[1],tupcol[2],10))
      self.sprites[y][x].extend(sprites)
      for s in sprites:
        self.placements[s] = (y, x)
      x += 1
      if x >= self.width:
        x = 0
        y += 1


class Metadata:
  def __init__(self, name, kind, values, default, attributes):
    self.name = name
    self.kind = kind
    self.values = values
    self.default = default
    self.attributes = attributes


class TileManager:
  def __init__(self, rows, columns):
    self.scale = 12
    self.char = 0x0900
    self.rows = rows
    self.columns = columns
    self.charmap = {}
    self.advances = {}
    self.reverse_advances = {}
    self.providers = [{"type":"space","advances":self.advances}]
    self.lang = {"%2$s%21661093$s":"%1$s", "baba.empty_tile":self.get_advance(self.scale),"baba.overlay":self.get_advance(-self.scale),"baba.nudge_left":self.get_advance(-self.scale/2),"baba.nudge_right":self.get_advance(self.scale/2)}
    island_width = 4
    island_height = 2
    island_pixels = 870
    for island in ['island','flower']:
      island_translation = ""
      for y in range(island_height):
        island_chars = ['\u0000' * island_width for x in range(island_height)]
        chars = ""
        for x in range(island_width):
          char = self.next_char()
          chars += char
          island_translation += char + self.get_advance(-1)
        island_chars[y] = chars
        self.providers.extend([{"type":"bitmap","file":f"baba:{island}_anim0.png","height":island_pixels/island_width/2,"ascent":-island_pixels/island_width/2*y,"chars":island_chars}])
        island_translation += self.get_advance(-99*island_width)
      self.lang[f'baba.background.{island}'] = island_translation
    for r in range(-1,rows+1):
      char = self.next_char()
      self.providers.append({"type":"bitmap","file":"baba:pixel.png","height":self.scale,"ascent":-r*self.scale,"chars":[char]})
      self.lang[f"baba.level_border.row{r}"] = char + self.get_advance(-1)

  def get_advance(self, width):
    if width == 0:
      return ''
    if width in self.reverse_advances:
      return self.reverse_advances[width]
    char = self.next_char()
    self.reverse_advances[width] = char
    self.advances[char] = width
    return char

  def next_char(self):
    self.char += 1
    if self.char>=0x600 and self.char<=0x6ff:
      self.char=0x700
    if self.char>0xffff:
      raise Exception("Too many!")
    return chr(self.char)

  def to_char_grid(self, grid, source):
    return [''.join(['\u0000' if len(x) == 0 else source[x[0]] for x in y]) for y in grid.sprites]

  def add_grid(self, grid, filename):
    height = round(self.scale*grid.scale, 2)
    adjust = round((height-self.scale)/2,2)
    for y in range(len(grid.sprites)):
      for x in range(len(grid.sprites[y])):
        spriteset = grid.sprites[y][x]
        if len(spriteset) > 0:
          c = spriteset[0]
          for r in range(self.rows):
            if (r,False) not in self.charmap:
              self.charmap[(r,False)] = {}
              self.charmap[(r,True)] = {}
            positive1 = self.next_char()
            positive2 = self.next_char()
            for c in spriteset:
              self.charmap[(r,False)][c] = positive1
              self.charmap[(r,True)][c] = positive2
              display = c.display(c.filter_properties('sprite'), '.', '-', '.')
              self.lang[f'baba.{display}.row{r}'] = self.get_advance(-adjust+c.shift[0])+positive1+self.get_advance(-self.scale-1-adjust-c.shift[0])
              if r != self.rows-1:
                self.lang[f'baba.{display}.row{r}.down'] = self.get_advance(-adjust+c.shift[0])+positive2+self.get_advance(-self.scale-1-adjust-c.shift[0])

    for r in range(self.rows):
      self.providers.append({"type":"bitmap","file":filename,"height":height,"ascent":round(-r*self.scale+adjust,2),"chars":self.to_char_grid(grid, self.charmap[(r,False)])})
      self.providers.append({"type":"bitmap","file":filename,"height":height,"ascent":round(-r*self.scale+adjust-self.scale/2,2),"chars":self.to_char_grid(grid, self.charmap[(r,True)])})

with open('sprites.yaml', 'r') as data:
  sprites = SpriteCollection(yaml.safe_load(data), 3)

#for o in sprites.objects.values():
#  for s,props in o.filter_sprites('editor').items():
#    print(s.display(props, ' ', '=', ' '))

manager = TileManager(18,33)
anim_grids = sprites.grids
for i,grids in enumerate(anim_grids):
  manager.add_grid(grids[0], f'baba:grid{i}_anim0.png')
tat.write_json(manager.lang, 'resourcepack/assets/baba/lang/en_us.json')
for i,grids in enumerate(anim_grids):
  for j,grid in enumerate(grids):
    grid.image.save(f'resourcepack/assets/baba/textures/grid{i}_anim{j}.png')

for j,grid in enumerate(anim_grids[0]):
  for p in manager.providers:
    if 'file' in p:
      p['file'] = p['file'].replace(f'anim{j-1}', f'anim{j}')
  tat.write_json({"providers":manager.providers}, f'resourcepack/assets/baba/font/anim{j}.json')

text = []
border = []
full_border = []
for r in range(manager.rows):
  text.extend([
    f'execute if score row baba matches {r} positioned ~ ~ ~-0.05 as @e[type=marker,tag=baba.object,distance=..0.1,nbt=!{{data:{{properties:["hide"]}}}}] if score @s z_layer = z_layer baba run function baba:display/add_object/row{r}',
  ])
text.append('data modify storage baba:main text append value \'{"translate":"baba.empty_tile"}\'')
tat.write_lines(text, 'datapack/data/baba/functions/display/add_objects.mcfunction')

def note_block(val):
  instrument = ['harp','basedrum','snare','hat','bass','flute','bell','guitar','chime','xylophone','iron_xylophone','cow_bell','didgeridoo','bit','banjo','pling'][val//25]
  return (instrument, val % 25)

def instrument(inst):
  return {'harp':'dirt','basedrum':'stone','snare':'sand','hat':'glass','bass':'oak_planks','flute':'clay','bell':'gold_block','guitar':'white_wool','chime':'packed_ice','xylophone':'bone_block','iron_xylophone':'iron_block','cow_bell':'soul_sand','didgeridoo':'pumpkin','bit':'emerald_block','banjo':'hay_block','pling':'glowstone'}[inst]

tat.delete_folder('datapack/data/baba/functions/display/add_object')
tat.delete_folder('datapack/data/baba/functions/display/palette')
add_bg = []
add_br = []
for pid,(pname,palette) in enumerate(sprites.palettes.items()):
  add_br.append(f'execute if score palette baba matches {pid} positioned -0.5 -0.5 -0.5 as @e[type=marker,tag=baba.space,dx=0.5,dy=1,dz=40] run data modify storage baba:main text append value \'{{"translate":"baba.level_border.row-1","color":"{palette["#15181f"]}"}}\'')
  add_br.append(f'execute if score palette baba matches {pid} run data modify storage baba:main text append value \'[{{"translate":"baba.level_border.row-1","color":"{palette["#15181f"]}"}},{{"translate":"baba.level_border.row-1","color":"{palette["#15181f"]}"}}]\'')
add_br.append(f'execute positioned -0.5 -0.5 -0.5 as @e[type=marker,tag=baba.space,dx=0.5,dy=1,dz=40] run data modify storage baba:main text append value \'{{"translate":"baba.overlay"}}\'')
add_br.append(f'data modify storage baba:main text append value \'[{{"translate":"baba.overlay"}},{{"translate":"baba.overlay"}}]\'')
for pid,(pname,palette) in enumerate(sprites.palettes.items()):
  for r in range(manager.rows):
    add_br.append(f'execute if score level_height baba matches {r+1} if score palette baba matches {pid} positioned -0.5 -0.5 -0.5 as @e[type=marker,tag=baba.space,dx=0.5,dy=1,dz=40] run data modify storage baba:main text append value \'{{"translate":"baba.level_border.row{r+1}","color":"{palette["#15181f"]}"}}\'')
    add_br.append(f'execute if score level_height baba matches {r+1} if score palette baba matches {pid} run data modify storage baba:main text append value \'[{{"translate":"baba.level_border.row{r+1}","color":"{palette["#15181f"]}"}},{{"translate":"baba.level_border.row{r+1}","color":"{palette["#15181f"]}"}}]\'')
    add_bg.append(f'execute if score row baba matches {r} if score palette baba matches {pid} run data modify storage baba:main text append value \'{{"translate":"baba.level_border.row{r}","color":"{palette["#15181f"]}"}}\'')
    add_bg.append(f'execute if score row baba matches {r} if score palette baba matches {pid} as @e[type=marker,tag=baba.space,dx=0.5,dy=1,dz=40] run data modify storage baba:main text append value \'{{"translate":"baba.level_border.row{r}","color":"{palette["#080808"]}"}}\'')
    add_bg.append(f'execute if score row baba matches {r} if score palette baba matches {pid} run data modify storage baba:main text append value \'{{"translate":"baba.level_border.row{r}","color":"{palette["#15181f"]}"}}\'')
add_br.append(f'execute positioned -0.5 -0.5 -0.5 as @e[type=marker,tag=baba.space,dx=0.5,dy=1,dz=40] run data modify storage baba:main text append value \'{{"translate":"baba.overlay"}}\'')
add_br.append(f'data modify storage baba:main text append value \'[{{"translate":"baba.overlay"}},{{"translate":"baba.overlay"}}]\'')
add_bg.append(f'execute as @e[type=marker,tag=baba.space,dx=0.5,dy=1,dz=40] run data modify storage baba:main text append value \'{{"translate":"baba.overlay"}}\'')
add_bg.append(f'data modify storage baba:main text append value \'{{"translate":"baba.overlay"}}\'')
add_bg.append('scoreboard players add row baba 1')
add_bg.append(f'execute if score row baba < level_height baba run data modify storage baba:main text append value \'{{"translate":"baba.overlay"}}\'')
tat.write_lines(add_bg,'datapack/data/baba/functions/display/add_background.mcfunction')
tat.write_lines(add_br,'datapack/data/baba/functions/display/add_border.mcfunction')
for r in range(manager.rows):
  lines = [
    'scoreboard players operation color baba = @s color',
    'execute if entity @s[tag=is_text,scores={text_used=0}] run function baba:display/disabled_text'
  ]
  subfns = {}
  overlayfns = {}
  for pid,(pname,palette) in enumerate(sprites.palettes.items()):
    lines.append(f'execute if score palette baba matches {pid} run function baba:display/palette/{pname}')
    plines = []
    for cid,color in enumerate(palette):
      color = palette[color]
      plines.append(f'execute if score color baba matches {cid+1} run data modify storage baba:main object_text set value [\'{{"color":"{color}","text":""}}\',\'""\']')
    plines.extend([
      f'execute if entity @s[nbt={{data:{{properties:["red"]}}}}] run data modify storage baba:main object_text set value [\'{{"color":"{palette["#e5533b"]}","text":""}}\',\'""\']',
      f'execute if entity @s[nbt={{data:{{properties:["blue"]}}}}] run data modify storage baba:main object_text set value [\'{{"color":"{palette["#557ae0"]}","text":""}}\',\'""\']',
    ])
    tat.write_lines(plines, f'datapack/data/baba/functions/display/palette/{pname}.mcfunction')
  for o in sprites.objects.values():
    sprs = o.filter_sprites('sprite').items()
    for s,p in sprs:
      display = s.display(p,'.','-','.')
      if len(sprs) > 1:
        if o.name not in subfns:
          subfns[o.name] = []
        selector1 = s.create_selector(p, False)
        selector2 = s.create_selector(p, False, ['move_frame=1..','move_dir=1'])
        selector3 = s.create_selector(p, False, ['move_frame=1..','move_dir=2'])
        if len(selector1) > 0:
          subfns[o.name].append(f'execute if entity @s[{selector1}] run data modify storage baba:main object_text[1] set value \'{{"translate":"baba.{display}.row{r}"}}\'')
          subfns[o.name].append(f'execute if entity @s[{selector2}] run data modify storage baba:main object_text[1] set value \'{{"translate":"baba.{display}.row{r}.down"}}\'')
          subfns[o.name].append(f'execute if entity @s[{selector3}] run data modify storage baba:main object_text[1] set value \'{{"translate":"baba.{display}.row{r-1}.down"}}\'')
        else:
          subfns[o.name].append(f'data modify storage baba:main object_text[1] set value \'{{"translate":"baba.{display}.row{r}"}}\'')
      else:
        selector1 = s.create_selector(p, True)
        selector2 = s.create_selector(p, True, ['move_frame=1..','move_dir=1'])
        selector3 = s.create_selector(p, True, ['move_frame=1..','move_dir=2'])
        lines.append(f'execute if entity @s[{selector1}] run data modify storage baba:main object_text[1] set value \'{{"translate":"baba.{display}.row{r}"}}\'')
        lines.append(f'execute if entity @s[{selector2}] run data modify storage baba:main object_text[1] set value \'{{"translate":"baba.{display}.row{r}.down"}}\'')
        lines.append(f'execute if entity @s[{selector3}] run data modify storage baba:main object_text[1] set value \'{{"translate":"baba.{display}.row{r-1}.down"}}\'')

    for ov in o.overlays:
      overlay = sprites.overlays[ov]
      if o.name not in overlayfns:
        overlayfns[o.name] = []
      for prop,op in overlay.property_mods.items():
        overlayfns[o.name].append(f'scoreboard players operation {prop} baba = @s {op["operands"][0]}')
        if op['operation'] == 'modulo':
          overlayfns[o.name].append(f'scoreboard players operation {prop} baba %= #{op["operands"][1]} baba')
      for ovspr in overlay.sprites:
        props = ovspr.filter_properties('sprite')
        special_checks = []
        for p,v in props.copy().items():
          if p.name in overlay.property_mods:
            special_checks.append((p, props[p]))
            del props[p]
        selector = ovspr.create_selector(props, False)
        disp = ovspr.display(ovspr.filter_properties('sprite'),".","-",".")
        final = 'execute '
        for prop,spec in special_checks:
          final += f'if score {prop.name} baba matches {ovspr.score_check(prop, spec)} '
        final += f'if entity @s[{selector}] run data modify storage baba:main text append value \'{{"translate":"baba.{disp}.row{r}","color":"{ovspr.properties[sprites.properties["color"]]}"}}\''
        overlayfns[o.name].append(final)

  for name,fn in subfns.items():
    lines.append(f'execute if entity @s[nbt={{data:{{sprite:"{name}"}}}}] run function baba:display/add_object/row{r}/{name}')
    tat.write_lines(fn, f'datapack/data/baba/functions/display/add_object/row{r}/{name}.mcfunction')
  lines.extend([
    'execute if entity @s[scores={move_frame=1..,move_dir=3}] run data modify storage baba:main object_text insert 1 value \'{"translate":"baba.nudge_right"}\'',
    'execute if entity @s[scores={move_frame=1..,move_dir=3}] run data modify storage baba:main object_text append value \'{"translate":"baba.nudge_left"}\'',
    'execute if entity @s[scores={move_frame=1..,move_dir=4}] run data modify storage baba:main object_text insert 1 value \'{"translate":"baba.nudge_left"}\'',
    'execute if entity @s[scores={move_frame=1..,move_dir=4}] run data modify storage baba:main object_text append value \'{"translate":"baba.nudge_right"}\'',
    'item modify entity 89fd5d65-fc19-4848-8c51-e72ea0c1d85c weapon.mainhand baba:color_text',
    'data modify storage baba:main text append from entity 89fd5d65-fc19-4848-8c51-e72ea0c1d85c HandItems[0].tag.display.Name'
  ])
  for name,fn in overlayfns.items():
    lines.append(f'execute if entity @s[nbt={{data:{{sprite:"{name}"}}}}] run function baba:display/add_object/row{r}/{name}.overlay')
    tat.write_lines(fn, f'datapack/data/baba/functions/display/add_object/row{r}/{name}.overlay.mcfunction')
  tat.write_lines(lines, f'datapack/data/baba/functions/display/add_object/row{r}.mcfunction')

for i,grids in enumerate(sprites.grids):
  for spr,place in grids[0].placements.items():
    if spr.parent.name == 'text':
      text = spr.properties[sprites.properties['text']]
      if text in ('baba','is','you'):
        providers = []
        for h in range(len(grids)):
          chars = [''.join(map(lambda x: str(h) if spr in x else '\u0000', x)) for x in grids[0].sprites]
          providers.append({"type":"bitmap","file":f"baba:grid{i}_anim{h}.png","height":12,"ascent":8,"chars":chars})
        tat.write_json({"providers":providers}, f'resourcepack/assets/baba/font/icon_{text}.json')


pack_lines = []
unpack_lines = ['data modify storage baba:main tile set from storage baba:main level[0][0][0]']
pack_sub = {}
unpack_sub = {}
blockstate = {}
custom_model = []
loot_table = []
get_all = []
spawn = [
  'summon marker ~ ~ ~ {Tags:["baba.object","spawn"]}',
  'data modify entity @e[type=marker,tag=spawn,distance=..0.1,limit=1] data.sprite set from storage baba:main spawn',
  'execute if data storage baba:main {spawn:"text"} run data modify entity @e[type=marker,tag=spawn,distance=..0.1,limit=1] data.text set from storage baba:main spawn_text',
  'execute if data storage baba:main {spawn:"text"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add is_text',
]
tat.delete_folder('resourcepack/assets/baba/models')
tat.delete_folder('datapack/data/baba/functions/dev/give')
tat.delete_folder('datapack/data/baba/functions/editor/pack/block')
tat.delete_folder('datapack/data/baba/functions/editor/unpack/block')
tat.delete_folder('datapack/data/baba/functions/editor/pack/block')

editor_sprites = {}
objectlist = sorted(sprites.objects.values(), key=lambda x:x.name)
for o in objectlist:
  for sp, prp in o.filter_sprites('spawn').items():
    summon = sprites.create_summon(sp, prp)
    for s in summon:
      if o.name == 'text':
        spawn.append(f'execute if data storage baba:main {{spawn:"{o.name}",spawn_text:"{prp[sprites.properties["text"]]}"}} run {s}')
      else:
        spawn.append(f'execute if data storage baba:main {{spawn:"{o.name}"}} run {s}')
  for spr in o.filter_sprites('editor'):
    size = (spr.width, spr.height)
    if size not in editor_sprites:
      editor_sprites[size] = []
    rc, gc, bc, ac = spr.image.split()
    r, g, b = bytes.fromhex(spr.properties[sprites.properties['color']][1:])
    rc = rc.point(lambda x: x * r/255)
    gc = gc.point(lambda x: x * g/255)
    bc = bc.point(lambda x: x * b/255)
    color_img = PIL.Image.merge('RGBA', (rc, gc, bc, ac))
    editor_sprites[size].append(([spr], color_img))
colorgrids = [Grid(x[1], x[0][0], x[0][1], 1, '#00000000') for x in editor_sprites.items()]
for c,grid in enumerate(colorgrids):
  grid.image.save(f'resourcepack/assets/baba/textures/grid{c}_color.png')
i = 0
for o in objectlist:
  sprs = o.filter_sprites('editor').items()
  for s,props in sprs:
    (inst, note) = note_block(i)
    i += 1
    set_storage = sprites.create_storage(s, s.properties, 'create')
    check_full = sprites.create_storage(s, props, 'check_full')
    check_props = sprites.create_storage(s, props, 'check_props')
    if inst not in pack_sub:
      pack_sub[inst] = []
      pack_lines.append(f'execute if block ~ ~ ~ note_block[instrument={inst}] run function baba:editor/pack/block/{inst}')
    pack_sub[inst].append(f'execute if block ~ ~ ~ note_block[note={note}] run data modify storage baba:main tile append value {{{set_storage}}}')
    if len(sprs) > 1:
      if o.name not in unpack_sub:
        unpack_sub[o.name] = []
        unpack_lines.append(f'execute if data storage baba:main tile{{data:{{sprite:"{o.name}"}}}} run function baba:editor/unpack/block/{o.name}')
      unpack_sub[o.name].extend([
        f'execute if data storage baba:main tile{{{check_props}}} run setblock ~ ~ ~ note_block[instrument={inst},note={note}]',
        f'execute if data storage baba:main tile{{{check_props}}} run setblock ~ ~-1 ~ {instrument(inst)}'
      ])
    else:
      unpack_lines.append(f'execute if data storage baba:main tile{{{check_full}}} run setblock ~ ~ ~ note_block[instrument={inst},note={note}]')
      unpack_lines.append(f'execute if data storage baba:main tile{{{check_full}}} run setblock ~ ~-1 ~ {instrument(inst)}')
    for g,grid in enumerate(colorgrids):
      if s in grid.placements:
        placement = grid.placements[s]
        x_uvsize = 16/grid.width
        y_uvsize = 16/grid.height
        break
    model = {"parent":"baba:parent_display","textures":{"up":f"baba:grid{g}_color"},"elements":[{"from":[0,0,0],"to":[16,0,16],"faces":{"up":{"uv":[round(x_uvsize*placement[1],4),round(y_uvsize*placement[0],4),round(x_uvsize*placement[1]+x_uvsize,4),round(y_uvsize*placement[0]+y_uvsize,4)],"texture":"#up"}}}]}
    description = s.display(props, '.','-','.')
    blockstate[f'instrument={inst},note={note}'] = {'model': f'baba:{description}','y':90}
    custom_model.append({'predicate':{'custom_model_data':i},'model':f'baba:{description}'})
    loot_table.append({"rolls":1,"entries":[{"type":"minecraft:item","name":"minecraft:note_block","conditions":[{"condition":"minecraft:block_state_property","block":"minecraft:note_block","properties":{"instrument":inst,"note":note}}],"functions":[{"function":"set_name","name":{"text":f'{description.replace("."," ").replace("_"," ")}',"italic":False}},{"function":"set_nbt","tag":f"{{babatile:1b,CustomModelData:{i}}}"}]}]})
    tat.write_json(model, f'resourcepack/assets/baba/models/{description}.json')
    simple_name = s.display(props, ' ','=',' ')
    cmd = f'give @s note_block{{babatile:1b,CustomModelData:{i},BlockStateTag:{{instrument:"{inst}",note:"{note}"}},display:{{Name:\'{{"text":"{simple_name}","italic":false}}\'}}}}'
    get_all.append(cmd)
    tat.write_lines([cmd], f'datapack/data/baba/functions/dev/give/{description}.mcfunction')
for i,fn in pack_sub.items():
  tat.write_lines(fn, f'datapack/data/baba/functions/editor/pack/block/{i}.mcfunction')
for i,fn in unpack_sub.items():
  tat.write_lines(fn, f'datapack/data/baba/functions/editor/unpack/block/{i}.mcfunction')
pack_lines.extend([
  'data modify storage baba:main tile[-1].extra set from block ~ ~1 ~ RecordItem.tag.extra',
  'execute positioned ~ ~3 ~ if block ~ ~ ~ note_block run function baba:editor/pack/block'
])
unpack_lines.extend([
  'execute if data storage baba:main level[0][0][1] run setblock ~ ~1 ~ glass',
  'execute if data storage baba:main tile.extra run setblock ~ ~1 ~ jukebox{RecordItem:{id:"minecraft:tnt",Count:1b}}',
  'execute if data storage baba:main tile.extra run data modify block ~ ~1 ~ RecordItem.tag.extra set from storage baba:main tile.extra',
  'data remove storage baba:main level[0][0][0]',
  'execute if data storage baba:main level[0][0][0] positioned ~ ~3 ~ run function baba:editor/unpack/block',
])
spawn.extend([
  'scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] facing 4',
  'scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] move_frame 0',
])
tat.write_lines(spawn, f'datapack/data/baba/functions/board/spawn.mcfunction')
tat.write_lines(pack_lines, f'datapack/data/baba/functions/editor/pack/block.mcfunction')
tat.write_lines(unpack_lines, f'datapack/data/baba/functions/editor/unpack/block.mcfunction')
custom_model = list(sorted(custom_model, key=lambda x: x['predicate']['custom_model_data']))
tat.write_json({"variants":blockstate}, f'resourcepack/assets/minecraft/blockstates/note_block.json')
tat.write_json({"gui_light":"front","display":{"firstperson_righthand":{"rotation":[90,0,0],"translation":[0,0,-5]},"gui":{"rotation":[90,0,0]}}}, 'resourcepack/assets/baba/models/parent_display.json')
tat.write_json({"overrides":custom_model}, f'resourcepack/assets/minecraft/models/item/note_block.json')
tat.write_lines(get_all, 'datapack/data/baba/functions/dev/all_items.mcfunction')
tat.write_json({"type":"minecraft:block","functions":[{"function":"minecraft:copy_state","block":"minecraft:note_block","properties":["instrument","note"]}],"pools":loot_table}, f'datapack/data/minecraft/loot_tables/blocks/note_block.json')
