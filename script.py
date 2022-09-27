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
    for grid in self.data['grids']:
      # we need a separate grid for each frame of idle animation
      result = [[] for x in range(self.anim_frames)]
      coords = None
      (width, height) = grid['size']
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
              for h,g in enumerate(result):
                x, y = coords
                if framedir == 'down':
                  img = image.crop((x+((width+1)*i),y+((height+1)*h),x+((width+1)*i)+width,y+((height+1)*h)+height))
                elif framedir == 'right':
                  img = image.crop((x+((width+1)*h),y+((height+1)*i),x+((width+1)*h)+width,y+((height+1)*i)+height))
                elif framedir == 'none':
                  img = image.crop((x,y+((height+1)*i),x+width,y+((height+1)*i)+height))
                g.append((sprite, img))
  
      result = [Grid(x, width, height, grid.get('scale', 1)) for x in result]
      grids.append(result)
    return grids

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
  def __init__(self, spritelist, sprite_width, sprite_height, scale):
    self.scale = scale
    self.size = math.ceil(math.sqrt(len(spritelist)))
    self.image = PIL.Image.new('RGBA', (sprite_width*self.size, sprite_height*self.size))
    self.sprites = [[None for x in range(self.size)] for x in range(self.size)]
    x = 0
    y = 0
    for sprite,image in spritelist:
      PIL.Image.Image.paste(self.image, image, (x*sprite_width, y*sprite_height))    
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
    self.lang = {"baba.row_end":self.get_advance(-self.scale*(self.columns+2)),"baba.empty_tile":self.get_advance(self.scale),"baba.overlay":self.get_advance(-self.scale)}
    for r in range(rows):
      self.charmap[r] = {}

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

manager = TileManager(20,40)
for i,grids in enumerate(sprites.grids):
  manager.add_grid(grids[0], f'baba:grid{i}_anim0.png')
tat.write_json(manager.lang, 'resourcepack/assets/baba/lang/en_us.json')
for i,grids in enumerate(sprites.grids):
  for j,grid in enumerate(grids):
    grid.image.save(f'resourcepack/assets/baba/textures/grid{i}_anim{j}.png')

for j,grid in enumerate(sprites.grids[0]):
  for p in manager.providers:
    if 'file' in p:
      p['file'] = p['file'].replace(f'anim{j-1}', f'anim{j}')
  tat.write_json({"providers":manager.providers}, f'resourcepack/assets/baba/font/anim{j}.json')

load = [
  f'kill @e[type=marker,tag=baba.object]',
  f'kill @e[type=marker,tag=baba.space]'
]
save = [
    f'fill 0 1 0 {manager.rows-1} 11 {manager.columns-1} air',
    f'fill 0 0 0 {manager.rows-1} 0 {manager.columns-1} air',
    f'fill 0 -1 0 {manager.rows-1} -1 {manager.columns-1} glass',
    'execute as @e[type=marker,tag=baba.object] at @s run function baba:io/save_block',
    f'fill 0 0 0 {manager.rows-1} 0 {manager.columns-1} white_concrete replace air'
]
text = ['data modify storage baba:main text set value [\'""\']']
for r in range(manager.rows):
  text.extend([
    f'data modify storage baba:main text append value \'{{"translate":"baba.tile.row{r}","color":"black"}}\'',
    f'scoreboard players set last_column baba -1',
    f'execute positioned {round(float(manager.rows-r-1),1)} 0.0 0.0 as @e[type=marker,tag=baba.object,dx=0.5,dy=1,dz={manager.columns},nbt={{data:{{sprite:"baba"}}}}] at @s align xyz run tp @s ~0.5 ~ ~0.501',
    f'execute positioned {round(float(manager.rows-r-1),1)} 0.0 0.0 as @e[type=marker,tag=baba.object,dx=0.5,dy=1,dz={manager.columns},nbt={{data:{{properties:["select"]}}}}] at @s align xyz run tp @s ~0.5 ~ ~0.502',
    f'execute positioned {round(float(manager.rows-r-1),1)} 0.0 0.0 as @e[type=marker,tag=baba.object,dx=0.5,dy=1,dz={manager.columns},sort=nearest] at @s run function baba:display/check_tile/row{r}',
    f'scoreboard players set column baba {manager.columns-1}',
    f'execute if score column baba > last_column baba run function baba:display/add_empty',
    f'data modify storage baba:main text append value \'{{"translate":"baba.tile.row{r}","color":"black"}}\''
  ])
  if r!=manager.rows-1:
    text.append('data modify storage baba:main text append value \'{"translate":"baba.row_end"}\'')
  for c in range(manager.columns):
    for h in range(3):
      load.append(f'execute positioned {manager.rows-r-1} {1+2*h} {c} run function baba:io/load_block')
      if h == 0:
        load.append(f'summon marker {manager.rows-r-1} 1 {c} {{Tags:["baba.space"]}}')
load.append('function baba:board/rules/update')
load.append('execute as @e[type=marker,tag=baba.object,tag=connector] at @s run function baba:board/graphics/connector')
load.append('execute as @e[type=marker,tag=baba.space] at @s run function baba:board/history/record')
load.append('function baba:display/update_text')
text.append('function baba:display/update_anim')
tat.write_lines(load, 'datapack/data/baba/functions/io/load_level.mcfunction')
tat.write_lines(save, 'datapack/data/baba/functions/io/save_level.mcfunction')
tat.write_lines(text, 'datapack/data/baba/functions/display/update_text.mcfunction')

def note_block(val):
  instrument = ['harp','basedrum','snare','hat','bass','flute','bell','guitar','chime','xylophone','iron_xylophone','cow_bell','didgeridoo','bit','banjo','pling'][val//25]
  return (instrument, val % 25)

def instrument(inst):
  return {'harp':'dirt','basedrum':'stone','snare':'sand','hat':'glass','bass':'oak_planks','flute':'clay','bell':'gold_block','guitar':'white_wool','chime':'packed_ice','xylophone':'bone_block','iron_xylophone':'iron_block','cow_bell':'soul_sand','didgeridoo':'pumpkin','bit':'emerald_block','banjo':'hay_block','pling':'glowstone'}[inst]

tat.delete_folder('datapack/data/baba/functions/display/check_tile')
for r in range(manager.rows):
  lines = [
    'execute store result score column baba run data get entity @s Pos[2]',
    'execute if score column baba > last_column baba run function baba:display/add_empty',
    'execute store result score last_column baba run data get entity @s Pos[2]',
  ]
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
    lines.append(f'execute if entity @s[nbt={{data:{{sprite:"{name}"}}}}] run function baba:display/check_tile/row{r}/{name}')
    tat.write_lines(fn, f'datapack/data/baba/functions/display/check_tile/row{r}/{name}.mcfunction')
  tat.write_lines(lines, f'datapack/data/baba/functions/display/check_tile/row{r}.mcfunction')


load_lines = []
save_lines = ['execute unless block ~ ~ ~ air positioned ~ ~2 ~ run function baba:io/save_block']
instruments = {}
sprite_fns = {}
blockstate = {}
custom_model = []
loot_table = []
get_all = []
gives = set()
tat.delete_folder('resourcepack/assets/baba/models')
tat.delete_folder('datapack/data/baba/functions/dev/give')
tat.delete_folder(f'datapack/data/baba/functions/io/load_block')
tat.delete_folder(f'datapack/data/baba/functions/io/save_block')

i = 0
for o in sorted(sprites.objects.values(), key=lambda x:x.name):
  sprs = o.filter_sprites('editor').items()
  for s,p in sprs:
    (inst, note) = note_block(i)
    i += 1
    if inst not in instruments:
      instruments[inst] = []
      load_lines.append(f'execute if block ~ ~ ~ note_block[instrument={inst}] run function baba:io/load_block/{inst}')
    summon = sprites.create_summon(s)
    for cmd in summon:
      instruments[inst].append(f'execute if block ~ ~ ~ note_block[note={note}] run {cmd}')
    if len(sprs) > 1:
      if o.name not in sprite_fns:
        sprite_fns[o.name] = []
      selector = s.create_selector(p, False)
      sprite_fns[o.name].append(f'execute if entity @s[{selector}] run setblock ~ ~ ~ note_block[instrument={inst},note={note}] keep')
      sprite_fns[o.name].append(f'execute if entity @s[{selector}] run setblock ~ ~-1 ~ {instrument(inst)} keep')
    else:
      selector = s.create_selector(p, True)
      save_lines.append(f'execute if entity @s[{selector}] run setblock ~ ~ ~ note_block[instrument={inst},note={note}] keep')
      save_lines.append(f'execute if entity @s[{selector}] run setblock ~ ~-1 ~ {instrument(inst)} keep')
    placement = manager.placement[s]
    for g,grids in enumerate(sprites.grids):
      if grids[0] == placement[0]:
        break
    uvsize = 16/grids[0].size
    model = {"parent":"baba:parent_display","textures":{"up":f"baba:grid{g}_anim0"},"elements":[{"from":[0,0,0],"to":[16,0,16],"faces":{"up":{"uv":[round(uvsize*placement[2],2),round(uvsize*placement[1],2),round(uvsize*placement[2]+uvsize,2),round(uvsize*placement[1]+uvsize,2)],"texture":"#up"}}}]}
    description = s.display(p, '.','-','.')
    blockstate[f'instrument={inst},note={note}'] = {'model': f'baba:{description}','y':90}
    custom_model.append({'predicate':{'custom_model_data':i},'model':f'baba:{description}'})
    loot_table.append({"rolls":1,"entries":[{"type":"minecraft:item","name":"minecraft:note_block","conditions":[{"condition":"minecraft:block_state_property","block":"minecraft:note_block","properties":{"instrument":inst,"note":note}}],"functions":[{"function":"set_name","name":{"text":f'{description.replace("."," ").replace("_"," ")}',"italic":False}},{"function":"set_nbt","tag":f"{{babatile:1b,CustomModelData:{i}}}"}]}]})
    tat.write_json(model, f'resourcepack/assets/baba/models/{description}.json')
    gives.add(o.name)
    simple_name = s.display(p, ' ','=',' ')
    cmd = f'give @s note_block{{babatile:1b,CustomModelData:{i},BlockStateTag:{{instrument:"{inst}",note:"{note}"}},display:{{Name:\'{{"text":"{simple_name}","italic":false}}\'}}}}'
    get_all.append(cmd)
    tat.write_lines([cmd], f'datapack/data/baba/functions/dev/give/{description}.mcfunction')
for i,fn in instruments.items():
  tat.write_lines(fn, f'datapack/data/baba/functions/io/load_block/{i}.mcfunction')
for i,fn in sprite_fns.items():
  tat.write_lines(fn, f'datapack/data/baba/functions/io/save_block/{i}.mcfunction')
  save_lines.append(f'execute if entity @s[nbt={{data:{{sprite:"{i}"}}}}] run function baba:io/save_block/{i}')
tat.write_lines(load_lines, f'datapack/data/baba/functions/io/load_block.mcfunction')
tat.write_lines(save_lines, f'datapack/data/baba/functions/io/save_block.mcfunction')
custom_model = list(sorted(custom_model, key=lambda x: x['predicate']['custom_model_data']))
tat.write_json({"variants":blockstate}, f'resourcepack/assets/minecraft/blockstates/note_block.json')
tat.write_json({"gui_light":"front","display":{"firstperson_righthand":{"rotation":[90,0,0],"translation":[0,0,-5]},"gui":{"rotation":[90,0,0]}}}, 'resourcepack/assets/baba/models/parent_display.json')
tat.write_json({"overrides":custom_model}, f'resourcepack/assets/minecraft/models/item/note_block.json')
tat.write_lines(get_all, 'datapack/data/baba/functions/dev/all_items.mcfunction')
tat.write_json({"type":"minecraft:block","functions":[{"function":"minecraft:copy_state","block":"minecraft:note_block","properties":["instrument","note"]}],"pools":loot_table}, f'datapack/data/minecraft/loot_tables/blocks/note_block.json')
