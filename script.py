import tryashtools as tat
import PIL.Image
import itertools
import numpy as np
import json
import yaml
import os
import math
import hashlib

# keeps track of all the object definitions
class SpriteCollection:
  def __init__(self, data, anim_frames):
    self.data = data
    self.anim_frames = anim_frames
    self.objects = {}
    self.overlays = {}
    self.properties = {
      'sprite': Metadata(name='sprite', kind='score', attributes=['editor','sprite','primary','spawn'], converter='hash'),
      'text': Metadata(name='text', kind='score', attributes=['editor','sprite','primary','spawn'], converter='hash'),
      'color': Metadata(name='color', kind='score', attributes=['spawn'], converter='hex'),
      'z_layer': Metadata(name='z_layer', kind='score', default=1, attributes=['all','spawn'])
    }
    self.palettes = data['palettes']
    for name,prop in data['properties'].items():
      self.properties[name] = Metadata(name=name, kind=prop['type'], values=prop.get('values'), default=prop.get('default'), attributes=prop['attributes'])
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
                  props = {self.properties['sprite']:adding.name}
                  if adding.name == 'text':
                    props[self.properties['z_layer']] = 20
                  for k,v in spr.items():
                    if k in baba.property_mods and k not in self.properties:
                      self.properties[k] = Metadata(k, 'mod', None, None, ['sprite'])
                    props[self.properties[k]] = v
                  # finalize the sprite and add each anim frame to its respective grid
                  sprite = BabaSprite(None, props, width, height, obj.get('shift', [0,0]))
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


def filter_properties(properties, check):
  props = properties.copy()
  for p in properties:
    if not check(p):
      del props[p]
  return props

def create_selector(properties, extra_scores=None):
  result = []
  tags = []
  nbt_true = []
  nbt_false = []
  scores = []
  for m,val in properties.items():
    if m.kind == 'tag':
      tags.append(('!' if val == False else '') + m.convert(val))
    elif m.kind == 'score':
      scores.append(m.name+'='+m.convert(val))
    elif m.kind == 'property':
      if val:
        nbt_true.append(f'"{m.name}"')
      else:
        nbt_false.append(f'"{m.name}"')
    else:
      raise ValueError(m.kind)
  if len(tags) > 0:
    result.append(','.join(['tag='+x for x in tags]))
  if extra_scores is not None:
    scores.extend(extra_scores)
  if len(scores) > 0:
    result.append('scores={'+','.join([x for x in scores])+'}')
  if len(nbt_true) > 0:
    result.append('nbt={data:{properties:['+','.join(nbt_true)+']}}')
  for f in nbt_false:
    result.append('nbt=!{data:{properties:['+f+']}}')
  return ','.join(result)

def create_summon(properties, extra_data=None):
  tags = ['baba.object','spawn']
  data = []
  scores = []
  nbt = []
  for m,val in properties.items():
    if m.kind == 'tag' and val != False:
      tags.append(m.convert(val))
    elif m.kind == 'score':
      scores.append(f'{m.name}:{m.convert(val)}')
    else:
      data.append(f'{m.name}:{m.convert(val)}')
  if len(tags) > 0:
    nbt.append('Tags:[' + ','.join([f'"{x}"' for x in tags]) + ']')
  if extra_data is not None:
    data.extend(extra_data)
  if len(scores) > 0:
    data.append('scores:{' + ','.join(scores) + '}')
  if len(data) > 0:
    nbt.append('data:{' + ','.join(data) + '}')
  return f'summon marker ~ ~ ~ {{{",".join(nbt)}}}'

def create_storage(properties, data=None):
  tags = []
  scores = []
  nbt = []
  for m,val in properties.items():
    if m.kind == 'tag' and val != False:
      tags.append(m.convert(val))
    elif m.kind == 'score':
      scores.append(f'{m.name}:{m.convert(val)}')
  if len(tags) > 0:
    nbt.append('tags:[' + ','.join([f'"{x}"' for x in tags]) + ']')
  if len(scores) > 0:
    nbt.append('scores:{' + ','.join(scores) + '}')
  if data is not None:
    nbt.append('data:{' + data + '}')
  return ','.join(nbt)

def hash(string):
  return int(hashlib.sha1(string.encode('utf-8')).hexdigest(), 16) % (2 ** 16)


class BabaObject:
  def __init__(self, name, is_overlay):
    self.name = name
    self.id = hash(name)
    self.sprites = []
    self.overlays = []
    self.property_mods = {}
    self.is_overlay = is_overlay

  # get sprites that are unique when filtering by an attribute
  # for example, baba has many sprites, but only 4 are unique with respect to the facing property
  def filter_sprites(self, check):
    sprites = {}
    for s in self.sprites:
      props = filter_properties(s.properties, check)
      if not any(map(lambda x: x == props, sprites.values())):
        sprites[s] = props
    return sprites


class BabaSprite:
  def __init__(self, image, properties, width, height, shift):
    self.image = image
    self.properties = properties
    self.width = width
    self.height = height
    self.shift = shift

  def display_val(self, val):
    if type(val) is list:
      return f'{val[0]}-{val[1]}'
    return str(val).lower()

  def display(self, properties, sep1, sep2):
    result = ''
    for k,v in properties.items():
      if 'primary' in k.attributes:
        result += self.display_val(v) + sep1
    for k,v in properties.items():
      if 'primary' not in k.attributes:
        result += k.name + sep2 + self.display_val(v) + sep1
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
  def __init__(self, name, kind, values=None, default=None, attributes=None, converter=None):
    self.name = name
    self.kind = kind
    self.values = values
    self.default = default
    self.attributes = [] if attributes is None else attributes
    self.converter = converter

  def convert(self, value):
    if self.kind == 'tag':
      if isinstance(value, str):
        return self.name + '.' + value
      return self.name
    if self.kind == 'score':
      if self.converter == 'hash' and isinstance(value, str):
        return str(hash(value))
      if self.converter == 'hex':
        return str(int(value[1:], 16))
      if isinstance(value, str):
        return str(self.values.index(value) + 1)
      if isinstance(value, list):
        return f'{value[0]}..{value[1]}'
    return str(value)


class TileManager:
  def __init__(self, rows, columns):
    self.scale = 12
    self.char = 0x0000
    self.rows = rows
    self.columns = columns
    self.charmap = {}
    self.advances = {}
    self.reverse_advances = {}
    nudge_left = self.next_char()
    nudge_right = self.next_char()
    self.forward_ch = self.next_char()
    self.overlay_ch = self.next_char()
    self.providers = [{"type":"space","advances":self.advances},{"type":"bitmap","file":"baba:space.png","height":-self.scale/2-2,"ascent":-32000,"chars":[nudge_left]},{"type":"bitmap","file":"baba:space.png","height":self.scale/2-1,"ascent":-32000,"chars":[nudge_right]},{"type":"bitmap","file":"baba:space.png","height":self.scale-1,"ascent":-32000,"chars":[self.forward_ch]},{"type":"bitmap","file":"baba:space.png","height":-self.scale-2,"ascent":-32000,"chars":[self.overlay_ch]}]
    self.lang = {"%2$s%21661093$s":"%1$s", "baba.empty_tile":self.forward_ch,"baba.overlay":self.overlay_ch,"baba.nudge_left":nudge_left,"baba.nudge_right":nudge_right}
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
      self.lang[f"baba.level_border.row{r}"] = char + self.get_advance(-1-self.scale)

  def get_advance(self, width):
    if width == 0:
      return ''
    if width in self.reverse_advances:
      return self.reverse_advances[width]
    char = self.next_char()
    self.reverse_advances[width] = char
    self.advances[char] = width
    return char

  # this even works if we go above 0xffff, cool!
  def next_char(self):
    self.char += 1
    while self.char in [0x0000, 0x000a, 0x00a7, 0x0590, 0x05be, 0x05c0, 0x05c3, 0x05c6, 0x0608, 0x060b, 0x060d, 0x0712, 0x081a, 0x0824, 0x0828, 0x200f, 0xfb1d, 0xfb1f] or (0xd800 <= self.char <= 0xdbff) or (0xdc00 <= self.char <= 0xdfff) or (0x05c8 <= self.char <= 0x05d2) or (0x05e8 <= self.char <= 0x05ff) or (0x061b <= self.char <= 0x0620) or (0x0648 <= self.char <= 0x065f) or (0x066d <= self.char <= 0x066f) or (0x070b <= self.char <= 0x0710) or (0x072d <= self.char <= 0x072f) or (0x074b <= self.char <= 0x074f) or (0x07a4 <= self.char <= 0x07a5) or (0x07b1 <= self.char <= 0x07c2) or (0x07f4 <= self.char <= 0x07f5) or (0x07fa <= self.char <= 0x07fc) or (0x07fe <= self.char <= 0x0800) or (0x082e <= self.char <= 0x0832) or (0x083c <= self.char <= 0x0842) or (0x0856 <= self.char <= 0x0858) or (0x085c <= self.char <= 0x0862) or (0x0868 <= self.char <= 0x0897) or (0x08a0 <= self.char <= 0x08a2) or (0x08b2 <= self.char <= 0x08b8) or (0x08c5 <= self.char <= 0x08c9) or (0xfb34 <= self.char <= 0xfb48) or (0xfbbf <= self.char <= 0xfbd5) or (0xfd8d <= self.char <= 0xfd94) or (0xfdc5 <= self.char <= 0xfdce) or (0xfdf0 <= self.char <= 0xfdf2) or (0xfe72 <= self.char <= 0xfe78) or (0xfefa <= self.char <= 0xfefe):
      self.char += 1
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
              display = c.display(filter_properties(c.properties, lambda x: 'sprite' in x.attributes), '.', '-')
              self.lang[f'baba.{display}.row{r}'] = self.get_advance(-adjust+c.shift[0])+positive1+self.overlay_ch+self.get_advance(-1-adjust-c.shift[0])
              if r != self.rows-1:
                self.lang[f'baba.{display}.row{r}.down'] = self.get_advance(-adjust+c.shift[0])+positive2+self.overlay_ch+self.get_advance(-1-adjust-c.shift[0])

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

text_map = []
for s in sprites.objects['text'].sprites:
  text = s.properties[sprites.properties['text']]
  text_map.append(f'{text}: {hash(text)}')
tat.write_lines(text_map, 'text_ids.txt')

text = [
  'data modify storage baba:main after_text set value []',
  'execute store result score row baba run data get entity @s Pos[0]',
  'scoreboard players operation row baba -= level_height baba',
  'execute store result score draw_column baba run data get entity @s Pos[2]',
  'execute if score draw_column baba > column baba run function baba:display/add_spaces'
]
border = []
full_border = []
for r in range(manager.rows):
  text.extend([
    f'execute if score row baba matches {-r-1} run function baba:display/add_object/row{r}',
  ])
text.append('tag @s add drawn')
text.append('data modify storage baba:main text append from storage baba:main after_text[]')
tat.write_lines(text, 'datapack/data/baba/functions/display/add_object.mcfunction')

def note_block(val):
  instrument = ['harp','basedrum','snare','hat','bass','flute','bell','guitar','chime','xylophone','iron_xylophone','cow_bell','didgeridoo','bit','banjo','pling'][val//25]
  return (instrument, val % 25)

def instrument(inst):
  return {'harp':'dirt','basedrum':'stone','snare':'sand','hat':'glass','bass':'oak_planks','flute':'clay','bell':'gold_block','guitar':'white_wool','chime':'packed_ice','xylophone':'bone_block','iron_xylophone':'iron_block','cow_bell':'soul_sand','didgeridoo':'pumpkin','bit':'emerald_block','banjo':'hay_block','pling':'glowstone'}[inst]

tat.delete_folder('datapack/data/baba/functions/display/add_object')
tat.delete_folder('datapack/data/baba/functions/display/palette')
tat.delete_folder('datapack/data/baba/functions/display/background')
add_bg = []
for pid,(pname,palette) in enumerate(sprites.palettes.items()):
  add_bg.append(f'execute if score palette baba matches {pid} run function baba:display/background/{pname}')
  pbg = []
  for h in range(1, manager.columns+1):
    jsons1=[{"translate":f"baba.level_border.row-1","color":palette["#15181f"]}]
    jsons2=[{"translate":f"baba.level_border.row-1","color":palette["#15181f"]}]
    for r in range(h):
      jsons1.append({"translate":f"baba.level_border.row{r}","color":palette["#080808"]})
      jsons2.append({"translate":f"baba.level_border.row{r}","color":palette["#15181f"]})    
    jsons1.append({"translate":f"baba.level_border.row{h}","color":palette["#15181f"]})
    jsons2.append({"translate":f"baba.level_border.row{h}","color":palette["#15181f"]})
    jsons1.append({"translate":f"baba.empty_tile"})
    jsons2.append({"translate":f"baba.empty_tile"})
    pbg.append(f'execute if score level_height baba matches {h} run data modify storage baba:main column set value \'{json.dumps(jsons1, separators=(",",":"))}\'')
    pbg.append(f'execute if score level_height baba matches {h} run data modify storage baba:main end_column set value \'{json.dumps(jsons2, separators=(",",":"))}\'')
  tat.write_lines(pbg, f'datapack/data/baba/functions/display/background/{pname}.mcfunction')
tat.write_lines(add_bg,'datapack/data/baba/functions/display/background.mcfunction')
for r in range(manager.rows):
  lines = [
    'scoreboard players operation color baba = @s color',
    'execute if entity @s[scores={sprite=30442,text_used=0}] run function baba:display/disabled_text'
  ]
  subfns = {}
  overlayfns = {}
  for pid,(pname,palette) in enumerate(sprites.palettes.items()):
    lines.append(f'execute if score palette baba matches {pid} run function baba:display/palette/{pname}')
    plines = []
    for color1,color2 in palette.items():
      plines.append(f'execute if score color baba matches {int(color1[1:],16)} run data modify storage baba:main object_text set value [\'{{"color":"{color2}","text":""}}\',\'""\']')
    plines.extend([
      f'execute if entity @s[nbt={{data:{{properties:["red"]}}}}] run data modify storage baba:main object_text set value [\'{{"color":"{palette["#e5533b"]}","text":""}}\',\'""\']',
      f'execute if entity @s[nbt={{data:{{properties:["blue"]}}}}] run data modify storage baba:main object_text set value [\'{{"color":"{palette["#557ae0"]}","text":""}}\',\'""\']',
    ])
    tat.write_lines(plines, f'datapack/data/baba/functions/display/palette/{pname}.mcfunction')
  for o in sprites.objects.values():
    sprs = o.filter_sprites(lambda x: 'sprite' in x.attributes).items()
    for s,p in sprs:
      display = s.display(p,'.','-')
      if len(sprs) > 1:
        if o.name not in subfns:
          subfns[o.name] = (filter_properties(s.properties, lambda x: x.name=='sprite'),[])
        p = p.copy()
        del p[sprites.properties['sprite']]
        adding_to = subfns[o.name][1]
      else:
        adding_to = lines
      selector1 = create_selector(p)
      selector2 = create_selector(p, ['move_frame=1..','move_dir=1'])
      selector3 = create_selector(p, ['move_frame=1..','move_dir=2'])
      adding_to.append(f'execute if entity @s[{selector1}] run data modify storage baba:main object_text[1] set value \'{{"translate":"baba.{display}.row{r}"}}\'')
      adding_to.append(f'execute if entity @s[{selector2}] run data modify storage baba:main object_text[1] set value \'{{"translate":"baba.{display}.row{r}.down"}}\'')
      adding_to.append(f'execute if entity @s[{selector3}] run data modify storage baba:main object_text[1] set value \'{{"translate":"baba.{display}.row{r-1}.down"}}\'')

    for ov in o.overlays:
      overlay = sprites.overlays[ov]
      if o.name not in overlayfns:
        overlayfns[o.name] = (filter_properties(s.properties, lambda x: x.name=='sprite'),[])
      for prop,op in overlay.property_mods.items():
        overlayfns[o.name][1].append(f'scoreboard players operation {prop} baba = @s {op["operands"][0]}')
        if op['operation'] == 'modulo':
          overlayfns[o.name][1].append(f'scoreboard players operation {prop} baba %= #{op["operands"][1]} baba')
      for ovspr in overlay.sprites:
        props = filter_properties(ovspr.properties, lambda x: 'sprite' in x.attributes)
        disp = ovspr.display(props,".","-")
        special_checks = []
        for p,v in props.copy().items():
          if p.name in overlay.property_mods:
            special_checks.append((p, props[p]))
            del props[p]
        del props[sprites.properties['sprite']]
        selector = create_selector(props)
        final = 'execute '
        for prop,spec in special_checks:
          final += f'if score {prop.name} baba matches {prop.convert(spec)} '
        final += f'if entity @s[{selector}] run data modify storage baba:main text append value \'{{"translate":"baba.{disp}.row{r}","color":"{ovspr.properties[sprites.properties["color"]]}"}}\''
        overlayfns[o.name][1].append(final)

  for name,(prp,fn) in subfns.items():
    lines.append(f'execute if entity @s[{create_selector(prp)}] run function baba:display/add_object/row{r}/{name}')
    tat.write_lines(fn, f'datapack/data/baba/functions/display/add_object/row{r}/{name}.mcfunction')
  lines.extend([
    'execute if entity @s[scores={move_frame=1..,move_dir=3}] run data modify storage baba:main object_text insert 1 value \'{"translate":"baba.nudge_right"}\'',
    'execute if entity @s[scores={move_frame=1..,move_dir=3}] run data modify storage baba:main object_text append value \'{"translate":"baba.nudge_left"}\'',
    'execute if entity @s[scores={move_frame=1..,move_dir=4}] run data modify storage baba:main object_text insert 1 value \'{"translate":"baba.nudge_left"}\'',
    'execute if entity @s[scores={move_frame=1..,move_dir=4}] run data modify storage baba:main object_text append value \'{"translate":"baba.nudge_right"}\'',
    'item modify entity 89fd5d65-fc19-4848-8c51-e72ea0c1d85c weapon.mainhand baba:color_text',
    'data modify storage baba:main text append from entity 89fd5d65-fc19-4848-8c51-e72ea0c1d85c HandItems[0].tag.display.Name'
  ])
  for name,(prp,fn) in overlayfns.items():
    lines.append(f'execute if entity @s[{create_selector(prp)}] run function baba:display/add_object/row{r}/{name}.overlay')
    tat.write_lines(fn, f'datapack/data/baba/functions/display/add_object/row{r}/{name}.overlay.mcfunction')
  tat.write_lines(lines, f'datapack/data/baba/functions/display/add_object/row{r}.mcfunction')

for i,grids in enumerate(sprites.grids):
  for spr,place in grids[0].placements.items():
    if spr.properties[sprites.properties['sprite']] == 'text':
      text = spr.properties[sprites.properties['text']]
      if text in ('baba','is','you'):
        providers = []
        for h in range(len(grids)):
          chars = [''.join(map(lambda x: str(h) if spr in x else '\u0000', x)) for x in grids[0].sprites]
          providers.append({"type":"bitmap","file":f"baba:grid{i}_anim{h}.png","height":12,"ascent":8,"chars":chars})
        tat.write_json({"providers":providers}, f'resourcepack/assets/baba/font/icon_{text}.json')


pack_lines = ['clone ~ ~ ~ ~ ~ ~ ~ ~ ~ replace force']
unpack_lines = ['data modify storage baba:main tile set from storage baba:main level[0][0][0]']
pack_sub = {}
unpack_sub = {}
blockstate = {}
custom_model = []
loot_table = []
get_all = []
spawn = []
spawntext = []
tat.delete_folder('resourcepack/assets/baba/models')
tat.delete_folder('datapack/data/baba/functions/dev/give')
tat.delete_folder('datapack/data/baba/functions/editor/pack/block')
tat.delete_folder('datapack/data/baba/functions/editor/unpack/block')
tat.delete_folder('datapack/data/baba/functions/editor/pack/block')

editor_sprites = {}
objectlist = sorted(sprites.objects.values(), key=lambda x:x.name)
for o in objectlist:
  if o.name == 'text':
    spawn.insert(0, f'execute if score spawn baba matches {o.id} run function baba:board/spawn_text')
    for spr in o.sprites:
      spr_text = spr.properties[sprites.properties['text']]
      props = filter_properties(spr.properties, lambda x: "spawn" in x.attributes)
      del props[sprites.properties['text']]
      del props[sprites.properties['sprite']]
      summon = create_summon(props, [f'text:"{spr_text}"'])
      spawntext.append(f'execute if score spawn_text baba matches {hash(spr_text)} run {summon}')
  else:
    props = next(iter(o.filter_sprites(lambda x: 'spawn' in x.attributes).values()))
    del props[sprites.properties['sprite']]
    spawn.append(f'execute if score spawn baba matches {o.id} run {create_summon(props)}')

  for spr in o.filter_sprites(lambda x: 'editor' in x.attributes):
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
  sprs = o.filter_sprites(lambda x: 'editor' in x.attributes).items()
  for s,props in sprs:
    (inst, note) = note_block(i)
    i += 1
    text_val = s.properties.get(sprites.properties['text'])
    set_storage = create_storage(s.properties, None if text_val is None else f'text:"{text_val}"')
    check_all = create_storage(props)
    check_sprite = create_storage(filter_properties(props, lambda x: x.name=='sprite'))
    check_rest = create_storage(filter_properties(props, lambda x: x.name!='sprite'))
    if inst not in pack_sub:
      pack_sub[inst] = []
      pack_lines.append(f'execute if block ~ ~ ~ note_block[instrument={inst}] run function baba:editor/pack/block/{inst}')
    pack_sub[inst].append(f'execute if block ~ ~ ~ note_block[note={note}] run data modify storage baba:main tile append value {{{set_storage}}}')
    if len(sprs) > 1:
      if o.name not in unpack_sub:
        unpack_sub[o.name] = []
        unpack_lines.append(f'execute if data storage baba:main tile{{{check_sprite}}} run function baba:editor/unpack/block/{o.name}')
      unpack_sub[o.name].extend([
        f'execute if data storage baba:main tile{{{check_rest}}} run setblock ~ ~ ~ note_block[instrument={inst},note={note}]',
        f'execute if data storage baba:main tile{{{check_rest}}} run setblock ~ ~-1 ~ {instrument(inst)}'
      ])
    else:
      unpack_lines.append(f'execute if data storage baba:main tile{{{check_all}}} run setblock ~ ~ ~ note_block[instrument={inst},note={note}]')
      unpack_lines.append(f'execute if data storage baba:main tile{{{check_all}}} run setblock ~ ~-1 ~ {instrument(inst)}')
    for g,grid in enumerate(colorgrids):
      if s in grid.placements:
        placement = grid.placements[s]
        x_uvsize = 16/grid.width
        y_uvsize = 16/grid.height
        break
    model = {"parent":"baba:parent_display","textures":{"up":f"baba:grid{g}_color"},"elements":[{"from":[0,0,0],"to":[16,0,16],"faces":{"up":{"uv":[round(x_uvsize*placement[1],4),round(y_uvsize*placement[0],4),round(x_uvsize*placement[1]+x_uvsize,4),round(y_uvsize*placement[0]+y_uvsize,4)],"texture":"#up"}}}]}
    description = s.display(props, '.','-')
    blockstate[f'instrument={inst},note={note}'] = {'model': f'baba:{description}','y':90}
    custom_model.append({'predicate':{'custom_model_data':i},'model':f'baba:{description}'})
    loot_table.append({"rolls":1,"entries":[{"type":"minecraft:item","name":"minecraft:note_block","conditions":[{"condition":"minecraft:block_state_property","block":"minecraft:note_block","properties":{"instrument":inst,"note":note}}],"functions":[{"function":"set_name","name":{"text":f'{description.replace("."," ").replace("_"," ")}',"italic":False}},{"function":"set_nbt","tag":f"{{babatile:1b,CustomModelData:{i}}}"}]}]})
    tat.write_json(model, f'resourcepack/assets/baba/models/{description}.json')
    simple_name = s.display(props, ' ','=')
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
spawn.append('scoreboard players operation @e[type=marker,tag=spawn,distance=..0.1,limit=1] sprite = spawn baba')
spawntext.append('scoreboard players operation @e[type=marker,tag=spawn,distance=..0.1,limit=1] text = spawn_text baba')
for m in sprites.properties.values():
  if 'spawn' in m.attributes and m.kind == 'score' and m.name not in ('sprite','text'):
      spawn.append(f'execute as @e[type=marker,tag=spawn,distance=..0.1,limit=1] store result score @s {m.name} run data get entity @s data.scores.{m.name}')
  if 'all' in m.attributes and 'spawn' not in m.attributes:
    if m.kind == 'score':
      spawn.append(f'scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] {m.name} {m.convert(m.default)}')
    else:
      raise ValueError(m.name)
spawn.append('data remove entity @e[type=marker,tag=spawn,distance=..0.1,limit=1] data.scores')
tat.write_lines(spawn, f'datapack/data/baba/functions/board/spawn.mcfunction')
tat.write_lines(spawntext, f'datapack/data/baba/functions/board/spawn_text.mcfunction')
tat.write_lines(pack_lines, f'datapack/data/baba/functions/editor/pack/block.mcfunction')
tat.write_lines(unpack_lines, f'datapack/data/baba/functions/editor/unpack/block.mcfunction')
custom_model = list(sorted(custom_model, key=lambda x: x['predicate']['custom_model_data']))
tat.write_json({"variants":blockstate}, f'resourcepack/assets/minecraft/blockstates/note_block.json')
tat.write_json({"gui_light":"front","display":{"firstperson_righthand":{"rotation":[90,0,0],"translation":[0,0,-5]},"gui":{"rotation":[90,0,0]}}}, 'resourcepack/assets/baba/models/parent_display.json')
tat.write_json({"overrides":custom_model}, f'resourcepack/assets/minecraft/models/item/note_block.json')
tat.write_lines(get_all, 'datapack/data/baba/functions/dev/all_items.mcfunction')
tat.write_json({"type":"minecraft:block","functions":[{"function":"minecraft:copy_state","block":"minecraft:note_block","properties":["instrument","note"]}],"pools":loot_table}, f'datapack/data/minecraft/loot_tables/blocks/note_block.json')
