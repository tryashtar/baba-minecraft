import tryashtools as tat
import PIL.Image
import itertools
import numpy as np
import json

class Info:
  def __init__(self):
    self.sheets = []
  def add_sheet(self, sheet):
    self.sheets.append(sheet)
  def generate_grids(self):
    result = [[] for x in range(3)]
    for h,grids in enumerate(result):
      grid = Grid()
      grids.append(grid)
      for sheet in self.sheets:
        for row in sheet.rows:
          for t,tile in enumerate(row.tiles):
            img = sheet.image.crop((row.x+(25*t),row.y+(25*h),row.x+(25*t)+24,row.y+(25*h)+24))
            color = None
            name = row.name
            if type(row.name) is tuple:
              name = row.name[0]
              if tile == 'text' or 'text' in name:
                color = row.name[1]
              else:
                color = row.name[2]
            sprite = Tile(name, tile, h, img, color)
            grid.add(sprite)
            if grid.is_full():
              grid = Grid()
              grids.append(grid)
    return result

class Sheet:
  def __init__(self, path):
    image = PIL.Image.open(path).convert('RGBA')
    array = np.array(image, dtype=np.ubyte)
    mask = (array[:,:,:3] == (84, 165, 75)).all(axis=2)
    alpha = np.where(mask, 0, 255)
    array[:,:,-1] = alpha
    self.image = PIL.Image.fromarray(np.ubyte(array))
    self.rows = []
  def add_row(self, name, x, y, tiles):
    self.rows.append(Row(name, x, y, tiles))
  def add_similar_rows(self, names, x, y, tiles):
    for i,name in enumerate(names):
      if name is not None:
        self.add_row(name, x, y+(25*i*3), tiles)

class Row:
  def __init__(self, name, x, y, tiles):
    self.name = name
    self.x = x
    self.y = y
    self.tiles = tiles

class Grid:
  def __init__(self):
    self.image = PIL.Image.new('RGBA', (24*10, 24*10))
    self.tiles = [[None for x in range(10)] for x in range(10)]
    self.x = 0
    self.y = 0
  def add(self, tile):
    PIL.Image.Image.paste(self.image, tile.image, (self.x*24, self.y*24))    
    self.tiles[self.y][self.x] = tile
    self.x += 1
    if self.x >= 10:
      self.x = 0
      self.y += 1
  def is_full(self):
    return self.y >= 10

class Tile:
  def __init__(self, name, metadata, anim, image, color):
    self.name = metadata if metadata == 'text' else name
    self.metadata = {"text":name,"part":"noun"} if metadata == 'text' else metadata
    self.desc = "obj" if len(metadata)==0 else ".".join(map(lambda x: str(x[0])+'-'+str(x[1]).lower(), self.metadata.items()))
    self.anim = anim
    self.image = image
    self.color = color

class TileManager:
  def __init__(self, rows, columns):
    self.scale = 12
    self.char = '\ue000'
    self.id = 0
    self.sprite_id = 1
    self.rows = rows
    self.columns = columns
    self.charmap = {}
    self.placement = {}
    self.negatives = {}
    self.ids = {}
    self.sprite_ids = {}
    self.sprite_collections = {}
    self.lang = {"baba.row_end":"-","baba.empty_tile":" ","baba.overlay":"!"}
    self.providers = [{"type":"space","advances":{" ":self.scale, "!":-self.scale, '.':-3, "-":-self.scale*self.columns,"!":-self.scale}}]
    for r in range(rows):
      self.charmap[r] = {}
  def next_char(self):
    self.char = chr(ord(self.char)+1)
    return self.char
  def to_char_grid(self, grid, source):
    return [''.join(['\u0000' if x is None else source[x] for x in y]) for y in grid.tiles]
  def add_grid(self, grid, filename):
    for y in range(len(grid.tiles)):
      for x in range(len(grid.tiles[y])):
        c = grid.tiles[y][x]
        if c is not None:
          self.negatives[c] = self.next_char()
          for r in range(self.rows):
            self.charmap[r][c] = self.next_char()
            self.lang[f'baba.{c.name}.{c.desc}.row{r}'] = self.charmap[r][c]+self.negatives[c]+'. '
          self.ids[c] = self.id
          self.id += 1
          self.placement[c] = (grid, y, x)
          if c.name not in self.sprite_ids:
            self.sprite_ids[c.name] = self.sprite_id
            self.sprite_id += 1
          if c.name not in self.sprite_collections:
            self.sprite_collections[c.name] = []
          self.sprite_collections[c.name].append(c)

    for r in range(self.rows):
      self.providers.append({"type":"bitmap","file":filename,"height":self.scale,"ascent":-r*self.scale,"chars":self.to_char_grid(grid, self.charmap[r])})
    self.providers.append({"type":"bitmap","file":filename,"height":-self.scale,"ascent":-32000,"chars":self.to_char_grid(grid, self.negatives)})

info = Info()
sprites1 = Sheet('sprites/sprites1.png')
sprites1.add_similar_rows([('belt','#609CD4','#5F9DD1')], 1, 85, ['text', {"facing":"right","frame":0}, {"facing":"right","frame":1}, {"facing":"right","frame":2}, {"facing":"right","frame":3}, {"facing":"up","frame":0}, {"facing":"up","frame":1}, {"facing":"up","frame":2}, {"facing":"up","frame":3}, {"facing":"left","frame":0}, {"facing":"left","frame":1}, {"facing":"left","frame":2}, {"facing":"left","frame":3}, {"facing":"down","frame":0}, {"facing":"down","frame":1}, {"facing":"down","frame":2}, {"facing":"down","frame":3}])
sprites1.add_similar_rows([('bug','#C29E46','#C29E46'), ('crab','#82261C','#82261C'), None, None, None, None, 'rocket', ('skull','#82261C','#82261C')], 1, 397, ['text', {"facing":"right"}, {"facing":"up"}, {"facing":"left"}, {"facing":"down"}])
sprites1.add_similar_rows([('ghost','#EB91CA','#EB91CA'), None, None, None, 'statue'], 276, 622, ['text', {"facing":"right"}, {"facing":"up"}, {"facing":"left"}, {"facing":"down"}])
sprites1.add_similar_rows([('bat','#8C5C9C','#8C5C9C')], 1, 1081, ['text', {"frame":0}, {"frame":1}, {"frame":2}, {"frame":3}])
sprites1.add_similar_rows(['cog'], 1, 1167, ['text', {"frame":0}, {"frame":1}, {"frame":2}, {"frame":3}])
sprites2 = Sheet('sprites/sprites2.png')
sprites2.add_similar_rows([('baba','#D9396A','#FFFFFF'), None, None, None, None, None, None, None, None, None, 'keke', None, 'me', None, 'robot'], 1, 1, ['text',{"facing":"right","frame":0},{"facing":"right","frame":1},{"facing":"right","frame":2},{"facing":"right","frame":3},{"facing":"up","frame":0},{"facing":"up","frame":1},{"facing":"up","frame":2},{"facing":"up","frame":3},{"facing":"left","frame":0},{"facing":"left","frame":1},{"facing":"left","frame":2},{"facing":"left","frame":3},{"facing":"down","frame":0},{"facing":"down","frame":1},{"facing":"down","frame":2},{"facing":"down","frame":3},{"facing":"right","sleep":True},{"facing":"up","sleep":True},{"facing":"left","sleep":True},{"facing":"down","sleep":True}])
sprites3 = Sheet('sprites/sprites3.png')
sprites3.add_similar_rows(['algae', None, None, ('flag', '#EDE285', '#EDE285'), None, 'key', 'love', None, None, None, None, 'ufo'], 1, 1, ['text', {}])
sprites3.add_similar_rows(['door', 'flower', None, None, None, 'pillar', ('rock', '#90673E', '#C29E46'), None, ('tile', '#737373', '#242424')], 126, 151, ['text', {}])
sprites3.add_similar_rows(['moon', None, None, 'star', 'tree'], 376, 451, ['text', {}])
sprites3.add_similar_rows(['box', None, 'fire', None, 'jelly'], 751, 1, ['text', {}])
text = Sheet('sprites/text.png')
text.add_row('text', 1, 1, [{"text":"all","part":"noun"}])
text.add_row('text', 1, 151, [{"text":"has","part":"has"}])
text.add_row(('text', '#90673E'), 1, 301, [{"text":"push","part":"property"}])
text.add_row('text', 226, 76, [{"text":"is","part":"is"}])
text.add_row(('text', '#D9396A'), 226, 226, [{"text":"you","part":"property"}])
text.add_row('text', 301, 76, [{"text":"and","part":"and"}])
text.add_row(('text', '#F0E484'), 226, 1123, [{"text":"win","part":"property"}])
text.add_row(('text', '#4B5C1C'), 151, 301, [{"text":"stop","part":"property"}])
tiles = Sheet('sprites/tiles.png')
tiles.add_similar_rows(['cloud', 'fence', None, 'grass', 'hedge', 'ice', 'lava', None, 'pipe', None, None, 'rubble', None, None, ('wall', '#737373', '#293141'), 'water'], 1, 451, ['text', {"up":False, "down":False, "left":False, "right":False}, {"up":False, "down":False, "left":False, "right":True}, {"up":True, "down":False, "left":False, "right":False}, {"up":True, "down":False, "left":False, "right":True}, {"up":False, "down":False, "left":True, "right":False}, {"up":False, "down":False, "left":True, "right":True}, {"up":True, "down":False, "left":True, "right":False}, {"up":True, "down":False, "left":True, "right":True}, {"up":False, "down":True, "left":False, "right":False}, {"up":False, "down":True, "left":False, "right":True}, {"up":True, "down":True, "left":False, "right":False}, {"up":True, "down":True, "left":False, "right":True}, {"up":False, "down":True, "left":True, "right":False}, {"up":False, "down":True, "left":True, "right":True}, {"up":True, "down":True, "left":True, "right":False}, {"up":True, "down":True, "left":True, "right":True}])
info.add_sheet(sprites1)
info.add_sheet(sprites2)
info.add_sheet(sprites3)
info.add_sheet(text)
info.add_sheet(tiles)
generated = info.generate_grids()

manager = TileManager(20,40)
for i,grid in enumerate(generated[0]):
  manager.add_grid(grid, f'baba:grid{i}_anim0.png')
tat.write_json(manager.lang, 'resourcepack/assets/baba/lang/en_us.json')
for a,grids in enumerate(generated):
  for i,grid in enumerate(grids):
    grid.image.save(f'resourcepack/assets/baba/textures/grid{i}_anim{a}.png')
  for p in manager.providers:
    if 'file' in p:
      p['file'] = p['file'].replace(f'anim{a-1}', f'anim{a}')
  tat.write_json({"providers":manager.providers}, f'resourcepack/assets/baba/font/anim{a}.json')

move = ['execute store result storage baba:main tick int 1 run scoreboard players get tick baba']
props = ['data modify storage baba:main properties set value [{sprite:"text",property:"push"}]']
load = [
  f'fill 0 11 0 {manager.rows-1} 11 {manager.columns-1} air',
  f'fill 0 11 0 {manager.rows-1} 11 {manager.columns-1} jukebox{{RecordItem:{{id:tnt,Count:1b,tag:{{tiles:[]}}}}}}'
]
save = [
    f'fill 0 0 0 {manager.rows-1} 0 {manager.columns-1} white_concrete',
    f'fill 0 -1 0 {manager.rows-1} -1 {manager.columns-1} glass'
]
for h in range(3):
  save.extend([
    f'fill 0 {h*2+1} 0 {manager.rows-1} {h*2+1} {manager.columns-1} air',
  ])
props_after = []
text = ['data modify storage baba:main text set value [\'""\']']
for r in range(manager.rows):
  for c in range(manager.columns):
    for h in range(3):
      load.append(f'execute positioned {manager.rows-r-1} {1+2*h} {c} run function baba:io/load_block')
      save.append(f'execute positioned {manager.rows-r-1} {1+2*h} {c} run function baba:io/save_block{h}')
    move.append(f'execute positioned {manager.rows-r-1} 11 {c} if data block ~ ~ ~ RecordItem.tag.tiles[{{properties:["you"]}}] run function baba:board/movement/move_you')
    props.append(f'execute positioned {manager.rows-r-1} 11 {c} run function baba:board/check_text')
    props_after.append(f'execute positioned {manager.rows-r-1} 11 {c} if data block ~ ~ ~ RecordItem.tag.tiles[0] run function baba:board/assign_properties')
    text.append(f'execute positioned {manager.rows-r-1} 11 {c} run function baba:text/check_tile/row{r}')
  if r!=manager.rows-1:
    text.append('data modify storage baba:main text append value \'{"translate":"baba.row_end"}\'')
move.append('function baba:text/update_text')
load.append('function baba:text/update_text')
text.append('function baba:text/update_anim')
props.extend(props_after)
tat.write_lines(move, 'datapack/data/baba/functions/board/move.mcfunction')
tat.write_lines(props, 'datapack/data/baba/functions/board/update_properties.mcfunction')
tat.write_lines(load, 'datapack/data/baba/functions/io/load_level.mcfunction')
tat.write_lines(save, 'datapack/data/baba/functions/io/save_level.mcfunction')
tat.write_lines(text, 'datapack/data/baba/functions/text/update_text.mcfunction')

def note_block(val):
  instrument = ['harp','basedrum','snare','hat','bass','flute','bell','guitar','chime','xylophone','iron_xylophone','cow_bell','didgeridoo','bit','banjo','pling'][val//25]
  return (instrument, val % 25)

def instrument(inst):
  return {'harp':'dirt','basedrum':'stone','snare':'sand','hat':'glass','bass':'oak_planks','flute':'clay','bell':'gold_block','guitar':'white_wool','chime':'packed_ice','xylophone':'bone_block','iron_xylophone':'iron_block','cow_bell':'soul_sand','didgeridoo':'pumpkin','bit':'emerald_block','banjo':'hay_block','pling':'glowstone'}[inst]

def nbt(name, metadata):
  result = f'{{sprite:"{t.name}"'
  for k,v in t.metadata.items():
    strv = v
    if type(v) is str:
      strv = f'"{v}"'
    if type(v) is bool:
      strv = '1b' if v else '0b'
    result += f',{k}:{strv}'
  result += "}"
  return result

for h in range(3):
  block = [
    'data modify storage baba:main tile set value {}',
    f'data modify storage baba:main tile set from block ~ 11 ~ RecordItem.tag.tiles[{h}]',
    'function baba:io/save_tile'
  ]
  tat.write_lines(block, f'datapack/data/baba/functions/io/save_block{h}.mcfunction')
lines = []
lines2 = []
for t,i in manager.ids.items():
  noteblock = note_block(i)
  snbt = nbt(t.name, t.metadata)
  lines.append(f'execute if block ~ ~ ~ note_block[instrument={noteblock[0]},note={noteblock[1]}] run data modify block ~ 11 ~ RecordItem.tag.tiles append value {snbt}')
  lines2.append(f'execute if data storage baba:main tile{snbt} run setblock ~ ~ ~ note_block[instrument={noteblock[0]},note={noteblock[1]}]')
  lines2.append(f'execute if data storage baba:main tile{snbt} run setblock ~ ~-1 ~ {instrument(noteblock[0])}')
tat.write_lines(lines, f'datapack/data/baba/functions/io/load_block.mcfunction')
tat.write_lines(lines2, f'datapack/data/baba/functions/io/save_tile.mcfunction')

for r in range(manager.rows):
  lines = [
    f'data modify storage baba:main text append value \'{{"translate":"baba.empty_tile"}}\'',
    f'data modify storage baba:main tiles set from block ~ ~ ~ RecordItem.tag.tiles',
    f'execute if data storage baba:main tiles[0] run function baba:text/check_tile/row{r}_loop',
  ]
  loop = [f'data modify storage baba:main tile set from storage baba:main tiles[0]']
  for t,i in manager.ids.items():
    translate = {"translate":f"baba.{t.name}.{t.desc}.row{r}"}
    if t.color is not None:
      translate["color"] = t.color
    snbt = nbt(t.name, t.metadata)
    loop.append(f'execute if data storage baba:main tile{snbt} run data modify storage baba:main text append value \'{json.dumps([{"translate":"baba.overlay"},translate], separators=(",", ":"))}\'')
  loop.append(f'data remove storage baba:main tiles[0]')
  loop.append(f'execute if data storage baba:main tiles[0] run function baba:text/check_tile/row{r}_loop')
  tat.write_lines(lines, f'datapack/data/baba/functions/text/check_tile/row{r}.mcfunction')
  tat.write_lines(loop, f'datapack/data/baba/functions/text/check_tile/row{r}_loop.mcfunction')

blockstate = {}
custom_model = []
loot_table = []
get_all = []
for name, spritelist in manager.sprite_collections.items():
  for index, t in enumerate(spritelist):
    spriteid = manager.ids[t]
    noteblock = note_block(spriteid)
    placement = manager.placement[t]
    for g,grid in enumerate(generated[0]):
      if grid == placement[0]:
        model = {"parent":"baba:parent_display","textures":{"up":f"baba:grid{g}_anim0"},"elements":[{"from":[0,0,0],"to":[16,0,16],"faces":{"up":{"uv":[1.6*placement[2],1.6*placement[1],1.6*placement[2]+1.6,1.6*placement[1]+1.6],"texture":"#up"}}}]}
        blockstate[f'instrument={noteblock[0]},note={noteblock[1]}'] = {'model': f'baba:{t.name}_{t.desc}','y':90}
        custom_model.append({'predicate':{'custom_model_data':spriteid},'model':f'baba:{t.name}_{t.desc}'})
        loot_table.append({"rolls":1,"entries":[{"type":"minecraft:item","name":"minecraft:note_block","conditions":[{"condition":"minecraft:block_state_property","block":"minecraft:note_block","properties":{"instrument":noteblock[0],"note":noteblock[1]}}],"functions":[{"function":"set_name","name":{"text":f'{t.name} {t.desc}',"italic":False}},{"function":"set_nbt","tag":f"{{babatile:1b,CustomModelData:{spriteid}}}"}]}]})
        if t.name == 'text' or index==0:
          simple_name = f'{t.name}'
          if t.name == 'text':
            simple_name += ' ' + t.metadata['text']
          cmd = f'give @s note_block{{babatile:1b,CustomModelData:{spriteid},BlockStateTag:{{instrument:"{noteblock[0]}",note:"{noteblock[1]}"}},display:{{Name:\'{{"text":"{simple_name}","italic":false}}\'}}}}'
          get_all.append(cmd)
          tat.write_lines([cmd], f'datapack/data/baba/functions/dev/give/{simple_name.replace(" ","_")}.mcfunction')
        tat.write_json(model, f'resourcepack/assets/baba/models/{t.name}_{t.desc}.json')
tat.write_json({"variants":blockstate}, f'resourcepack/assets/minecraft/blockstates/note_block.json')
tat.write_json({"gui_light":"front","display":{"firstperson_righthand":{"rotation":[90,0,0],"translation":[0,0,-5]},"gui":{"rotation":[90,0,0]}}}, 'resourcepack/assets/baba/models/parent_display.json')
tat.write_json({"overrides":custom_model}, f'resourcepack/assets/minecraft/models/item/note_block.json')
tat.write_lines(get_all, 'datapack/data/baba/functions/dev/all_items.mcfunction')
tat.write_json({"type":"minecraft:block","functions":[{"function":"minecraft:copy_state","block":"minecraft:note_block","properties":["instrument","note"]}],"pools":loot_table}, f'datapack/data/minecraft/loot_tables/blocks/note_block.json')
