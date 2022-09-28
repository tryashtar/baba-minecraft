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
    self.properties = {}
    for name,prop in data['properties'].items():
      self.properties[name] = Metadata(name, prop['type'], prop.get('values'), prop.get('default'), prop['attributes'])
    self.grids = self.generate_grids()

  def get_obj(self, name):
    if name in self.objects:
      return self.objects[name]
    obj = BabaObject(name)
    self.objects[name] = obj
    return obj

  def permute(self, properties):
    return list(dict(zip(properties, x)) for x in itertools.product(*properties.values()))

  def generate_grids(self):
    grids = []
    color_grids = []
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
          for obj in config['objects']:
            # if coords are unspecified, move to the next row
            if coords is not None:
              coords[1] += (height+1) * frames
            if obj is None:
              continue
            coords = obj.get('coords', coords)
            framedir = obj.get('frames', 'down')
            frames = 1 if framedir == 'none' else self.anim_frames
            # create the object, or find an existing one if the object's sprites appear on multiple rows (e.g. text)
            baba = self.get_obj(obj['name'])
            sprites = []
            # expand sprite definitions from shorthands to a complete list of all sprites
            for spr in config['sprites']:
              if type(spr) is dict and 'permute' in spr:
                sprites.extend(self.permute(spr['permute']))
              else:
                sprites.append(spr)
            for i,spr in enumerate(sprites):
              if spr == 'text':
                adding = self.get_obj('text')
                color = obj.get('text color', obj.get('color'))
                spr = {'text': obj['name'], 'part': 'noun'}
              else:
                adding = baba
                color = obj.get('object color', obj.get('color'))
              # include properties specific to this object, or this sprite
              if 'properties' in obj:
                for k,v in obj['properties'].items():
                  spr[k] = v
              if 'properties' in config:
                for k,v in config['properties'].items():
                  spr[k] = v
              # make keys the actual metadata objects instead of their names
              props = {}
              for k,v in spr.items():
                props[self.properties[k]] = v
              # finalize the sprite and add each anim frame to its respective grid
              sprite = BabaSprite(adding, props, color)
              adding.sprites.append(sprite)
              for h,g in enumerate(anim_grids):
                x, y = coords
                if framedir == 'down':
                  img = image.crop((x+((width+1)*i),y+((height+1)*h),x+((width+1)*i)+width,y+((height+1)*h)+height))
                elif framedir == 'right':
                  img = image.crop((x+((width+1)*h),y+((height+1)*i),x+((width+1)*h)+width,y+((height+1)*i)+height))
                elif framedir == 'none':
                  img = image.crop((x,y+((height+1)*i),x+width,y+((height+1)*i)+height))
                g.append((sprite, img))
                if h == 0:
                  rc, gc, bc, ac = img.split()
                  r, g, b = bytes.fromhex(color[1:])
                  rc = rc.point(lambda i: i * r/255)
                  gc = gc.point(lambda i: i * g/255)
                  bc = bc.point(lambda i: i * b/255)
                  color_img = PIL.Image.merge('RGBA', (rc, gc, bc, ac))
                  colorgrid.append((sprite, color_img))
      color_grids.append(Grid(colorgrid, width, height, grid.get('scale', 1), '#00000000'))
      anim_grids = [Grid(x, width, height, grid.get('scale', 1), '#00000000') for x in anim_grids]
      grids.append(anim_grids)
    return (grids, color_grids)

  def create_summon(self, sprite):
    types = {}
    for k,v in sprite.properties.items():
      if k.kind not in types:
        types[k.kind] = {}
      types[k.kind][k] = v
    for k in self.properties.values():
      if 'all' in k.attributes:
        if k.kind not in types:
          types[k.kind] = {}
        if k not in types[k.kind]:
          types[k.kind][k] = k.default
    commands = []
    summon = []
    data = []
    tags = ["baba.object"]
    for t,vals in types.items():
      if t == 'tag':
        # if the metadata value is set to a bool, we just check for a tag by that name
        # if it's set to a string (like text 'part'), we check for a tag of the form <metadata>.<value>
        tags.extend(list(map(lambda x: x[0].name+'.'+x[1] if type(x[1]) is str else x[0].name, filter(lambda x: type(x[1]) is str or x[1], vals.items()))))
      elif t == 'score':
        tags.append('spawn')
        for prop,val in vals.items():
          # for scores that are represented with strings, use the index of the values list
          # add 1 because I prefer facing to be 1/2/3/4 instead of 0/1/2/3
          commands.append(f'scoreboard players set @e[type=marker,tag=spawn,y=1,distance=..0.1,limit=1] {prop.name} {val if type(val) is int else prop.values.index(val)+1}')
        commands.append(f'tag @e[type=marker,tag=spawn,y=1,distance=..0.1,limit=1] remove spawn')
      elif t == 'nbt':
        for prop,val in vals.items():
          v = val
          if type(v) is bool:
            v = '1b' if v else '0b'
          elif type(v) is str:
            v = '"'+v+'"'
          data.append(prop.name+':'+v)
    if len(tags) > 0:
      summon.append('Tags:['+','.join(['"'+x+'"' for x in tags])+']')
    summon.append('data:{sprite:"'+sprite.parent.name+'"'+(',' if len(data)>0 else '')+','.join(data)+'}')
    commands.insert(0, 'summon marker ~ 1 ~ {'+','.join(summon)+'}')
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
    tags = ['baba.object'] if mode == 'create' else []
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
  def __init__(self, name):
    self.name = name
    self.sprites = []

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
  def __init__(self, obj, properties, color):
    self.parent = obj
    self.properties = properties
    self.color = color

  # return a copy of properties, only including metadata with the given attribute
  def filter_properties(self, attribute):
    props = self.properties.copy()
    for p in self.properties:
      if attribute not in p.attributes:
        del props[p]
    return props

  # lots of repeated code from create_summon above
  def create_selector(self, properties, include_sprite):
    types = {}
    for k,v in properties.items():
      if k.kind not in types:
        types[k.kind] = {}
      types[k.kind][k] = v
    result = []
    nbt_true = []
    nbt_false = []
    if include_sprite:
      nbt_true.append('sprite:"'+self.parent.name+'"')
    for t,vals in types.items():
      if t == 'tag':
        result.append(','.join(['tag='+('' if (type(x[1]) is str or x[1]) else '!') + (x[0].name+'.'+x[1] if type(x[1]) is str else x[0].name) for x in vals.items()]))
      elif t == 'score':
        result.append('scores={'+','.join([x[0].name+'='+str(x[1] if type(x[1]) is int else x[0].values.index(x[1])+1) for x in vals.items()])+'}')
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
    if len(nbt_true) > 0:
      result.append('nbt={data:{'+','.join(nbt_true)+'}}')
    if len(nbt_false) > 0:
      result.append('nbt=!{data:{'+','.join(nbt_false)+'}}')
    return ','.join(result)

  def display(self, properties, sep1, sep2, sep3):
    if len(properties) == 0:
      return self.parent.name
    result = self.parent.name + sep1
    for k,v in properties.items():
      if 'primary' in k.attributes:
        result += str(v).lower() + sep3
    for k,v in properties.items():
      if 'primary' not in k.attributes:
        result += k.name + sep2 + str(v).lower() + sep3
    result = result[:-1]
    return result


class Grid:
  def __init__(self, spritelist, sprite_width, sprite_height, scale, color):
    self.scale = scale
    self.size = math.ceil(math.sqrt(len(spritelist)))
    self.image = PIL.Image.new('RGBA', (sprite_width*self.size, sprite_height*self.size), color)
    self.sprites = [[None for x in range(self.size)] for x in range(self.size)]
    x = 0
    y = 0
    for sprite,image in spritelist:
      PIL.Image.Image.paste(self.image, image, (x*sprite_width, y*sprite_height), image)    
      self.sprites[y][x] = sprite
      x += 1
      if x >= self.size:
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
    self.char = '\u0900'
    self.rows = rows
    self.columns = columns
    self.charmap = {}
    self.placement = {}
    self.negatives = {}
    self.advances = {}
    self.reverse_advances = {}
    self.providers = [{"type":"space","advances":self.advances}]
    self.lang = {"baba.empty_tile":self.get_advance(self.scale),"baba.overlay":self.get_advance(-self.scale)}
    negative_px = self.next_char()
    self.providers.append({"type":"bitmap","file":"baba:pixel.png","height":-self.scale,"ascent":-32000,"chars":[negative_px]})
    for r in range(-1,rows+1):
      self.charmap[r] = {}
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
    i = ord(self.char)
    i += 1
    if i>=0x600 and i<=0x6ff:
      i=0x700
    self.char = chr(i)
    return self.char

  def to_char_grid(self, grid, source):
    return [''.join(['\u0000' if x is None else source[x] for x in y]) for y in grid.sprites]

  def add_grid(self, grid, filename):
    height = round(self.scale*grid.scale, 2)
    adjust = round((height-self.scale)/2,2)
    for y in range(len(grid.sprites)):
      for x in range(len(grid.sprites[y])):
        c = grid.sprites[y][x]
        if c is not None:
          self.negatives[c] = self.next_char()
          for r in range(self.rows):
            self.charmap[r][c] = self.next_char()
            display = c.display(c.filter_properties('sprite'), '.', '-', '.')
            self.lang[f'baba.{display}.row{r}'] = self.get_advance(-adjust)+self.charmap[r][c]+self.negatives[c]+self.get_advance(self.scale-3+adjust)
          self.placement[c] = (grid, y, x)

    for r in range(self.rows):
      self.providers.append({"type":"bitmap","file":filename,"height":height,"ascent":round(-r*self.scale+adjust,2),"chars":self.to_char_grid(grid, self.charmap[r])})
    self.providers.append({"type":"bitmap","file":filename,"height":-height,"ascent":-32000,"chars":self.to_char_grid(grid, self.negatives)})

with open('sprites.yaml', 'r') as data:
  sprites = SpriteCollection(yaml.safe_load(data), 3)

for o in sprites.objects.values():
  for s,props in o.filter_sprites('editor').items():
    print(s.display(props, ' ', '=', ' '))

manager = TileManager(18,33)
(anim_grids, color_grids) = sprites.grids
for i,grids in enumerate(anim_grids):
  manager.add_grid(grids[0], f'baba:grid{i}_anim0.png')
tat.write_json(manager.lang, 'resourcepack/assets/baba/lang/en_us.json')
for i,grids in enumerate(anim_grids):
  for j,grid in enumerate(grids):
    grid.image.save(f'resourcepack/assets/baba/textures/grid{i}_anim{j}.png')
for i,grid in enumerate(color_grids):
  grid.image.save(f'resourcepack/assets/baba/textures/grid{i}_color.png')

for j,grid in enumerate(anim_grids[0]):
  for p in manager.providers:
    if 'file' in p:
      p['file'] = p['file'].replace(f'anim{j-1}', f'anim{j}')
  tat.write_json({"providers":manager.providers}, f'resourcepack/assets/baba/font/anim{j}.json')

text = ['data modify storage baba:main text append value \'{"translate":"baba.empty_tile"}\'']
border = []
full_border = []
for r in range(manager.rows):
  text.extend([
    f'execute if score row baba matches {r} as @e[type=marker,tag=baba.object,distance=..0.1,sort=nearest] run function baba:display/add_object/row{r}'
  ])
  border.append(f'execute if score row baba matches {r} run data modify storage baba:main text append value \'{{"translate":"baba.level_border.row{r}","color":"#15181f"}}\'')
  full_border.extend([
    f'execute if score row baba matches {r+1} as @e[type=marker,tag=baba.space,dx=0.5,dy=1,dz=40] run data modify storage baba:main text append value \'{{"translate":"baba.level_border.row{r+1}","color":"#15181f"}}\'',
    f'execute if score row baba matches {r+1} run data modify storage baba:main text append value \'[{{"translate":"baba.level_border.row{r+1}","color":"#15181f"}},{{"translate":"baba.level_border.row{r+1}","color":"#15181f"}}]\'',
  ])
tat.write_lines(text, 'datapack/data/baba/functions/display/add_objects.mcfunction')
tat.write_lines(border, 'datapack/data/baba/functions/display/add_border.mcfunction')
tat.write_lines(full_border, 'datapack/data/baba/functions/display/add_full_border.mcfunction')

def note_block(val):
  instrument = ['harp','basedrum','snare','hat','bass','flute','bell','guitar','chime','xylophone','iron_xylophone','cow_bell','didgeridoo','bit','banjo','pling'][val//25]
  return (instrument, val % 25)

def instrument(inst):
  return {'harp':'dirt','basedrum':'stone','snare':'sand','hat':'glass','bass':'oak_planks','flute':'clay','bell':'gold_block','guitar':'white_wool','chime':'packed_ice','xylophone':'bone_block','iron_xylophone':'iron_block','cow_bell':'soul_sand','didgeridoo':'pumpkin','bit':'emerald_block','banjo':'hay_block','pling':'glowstone'}[inst]

tat.delete_folder('datapack/data/baba/functions/display/add_object')
for r in range(manager.rows):
  lines = []
  subfns = {}
  for o in sprites.objects.values():
    sprs = o.filter_sprites('sprite').items()
    for s,p in sprs:
      translate = {"translate":f"baba.{s.display(p,'.','-','.')}.row{r}"}
      if s.color is not None:
        translate["color"] = s.color
      if len(sprs) > 1:
        if o.name not in subfns:
          subfns[o.name] = []
        selector = s.create_selector(p, False)
        subfns[o.name].append(f'execute if entity @s[{selector}] run data modify storage baba:main text append value \'{json.dumps([{"translate":"baba.overlay"},translate], separators=(",", ":"))}\'')
      else:
        selector = s.create_selector(p, True)
        lines.append(f'execute if entity @s[{selector}] run data modify storage baba:main text append value \'{json.dumps([{"translate":"baba.overlay"},translate], separators=(",", ":"))}\'')

  for name,fn in subfns.items():
    lines.append(f'execute if entity @s[nbt={{data:{{sprite:"{name}"}}}}] run function baba:display/add_object/row{r}/{name}')
    tat.write_lines(fn, f'datapack/data/baba/functions/display/add_object/row{r}/{name}.mcfunction')
  tat.write_lines(lines, f'datapack/data/baba/functions/display/add_object/row{r}.mcfunction')


pack_lines = []
unpack_lines = ['data modify storage baba:main tile set from storage baba:main level[0][0][0]']
pack_sub = {}
unpack_sub = {}
blockstate = {}
custom_model = []
loot_table = []
get_all = []
tat.delete_folder('resourcepack/assets/baba/models')
tat.delete_folder('datapack/data/baba/functions/dev/give')
tat.delete_folder('datapack/data/baba/functions/editor/pack/block')
tat.delete_folder('datapack/data/baba/functions/editor/unpack/block')
tat.delete_folder('datapack/data/baba/functions/editor/pack/block')

i = 0
for o in sorted(sprites.objects.values(), key=lambda x:x.name):
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
    placement = manager.placement[s]
    for g,grids in enumerate(anim_grids):
      if grids[0] == placement[0]:
        break
    uvsize = 16/grids[0].size
    model = {"parent":"baba:parent_display","textures":{"up":f"baba:grid{g}_color"},"elements":[{"from":[0,0,0],"to":[16,0,16],"faces":{"up":{"uv":[round(uvsize*placement[2],4),round(uvsize*placement[1],4),round(uvsize*placement[2]+uvsize,4),round(uvsize*placement[1]+uvsize,4)],"texture":"#up"}}}]}
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
  'execute positioned ~ ~2 ~ if block ~ ~ ~ note_block run function baba:editor/pack/block'
])
unpack_lines.extend([
  'data remove storage baba:main level[0][0][0]',
  'execute if data storage baba:main level[0][0][0] positioned ~ ~2 ~ run function baba:editor/unpack/block',
])
tat.write_lines(pack_lines, f'datapack/data/baba/functions/editor/pack/block.mcfunction')
tat.write_lines(unpack_lines, f'datapack/data/baba/functions/editor/unpack/block.mcfunction')
custom_model = list(sorted(custom_model, key=lambda x: x['predicate']['custom_model_data']))
tat.write_json({"variants":blockstate}, f'resourcepack/assets/minecraft/blockstates/note_block.json')
tat.write_json({"gui_light":"front","display":{"firstperson_righthand":{"rotation":[90,0,0],"translation":[0,0,-5]},"gui":{"rotation":[90,0,0]}}}, 'resourcepack/assets/baba/models/parent_display.json')
tat.write_json({"overrides":custom_model}, f'resourcepack/assets/minecraft/models/item/note_block.json')
tat.write_lines(get_all, 'datapack/data/baba/functions/dev/all_items.mcfunction')
tat.write_json({"type":"minecraft:block","functions":[{"function":"minecraft:copy_state","block":"minecraft:note_block","properties":["instrument","note"]}],"pools":loot_table}, f'datapack/data/minecraft/loot_tables/blocks/note_block.json')
