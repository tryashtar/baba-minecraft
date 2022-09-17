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
              if tile == 'text':
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
  def __init__(self, name, sprite, anim, image, color):
    self.name = sprite if sprite == 'text' else name
    self.sprite = name if sprite == 'text' else sprite
    self.anim = anim
    self.image = image
    self.color = color

class TextManager:
  def __init__(self, rows):
    self.char = '\ue000'
    self.id = 0
    self.sprite_id = 1
    self.rows = rows
    self.charmap = {}
    self.placement = {}
    self.negatives = {}
    self.ids = {}
    self.sprite_ids = {}
    self.lang = {"baba.row_end":"-","baba.empty_tile":" "}
    self.providers = [{"type":"space","advances":{" ":24, "!":-24, '.':-3, "-":-24*16}}]
    self.sprites = {}
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
            self.lang[f'baba.{c.name}.{c.sprite}.row{r}'] = self.charmap[r][c]+self.negatives[c]+'. '
          self.ids[c] = self.id
          self.id += 1
          self.placement[c] = (grid, y, x)
          if c.name not in self.sprites:
            self.sprites[c.name] = {}
            self.sprite_ids[c.name] = self.sprite_id
            self.sprite_id += 1
          self.sprites[c.name][c.sprite] = c

    for r in range(self.rows):
      self.providers.append({"type":"bitmap","file":filename,"height":24,"ascent":-r*24,"chars":self.to_char_grid(grid, self.charmap[r])})
    self.providers.append({"type":"bitmap","file":filename,"height":-24,"ascent":-32000,"chars":self.to_char_grid(grid, self.negatives)})

info = Info()
sprites1 = Sheet('sprites/sprites1.png')
sprites1.add_similar_rows(['belt'], 1, 85, ['text', 'r1', 'r2', 'r3', 'r4', 'u1', 'u2', 'u3', 'u4', 'l1', 'l2', 'l3', 'l4', 'd1', 'd2', 'd3', 'd4'])
sprites1.add_similar_rows(['bug', 'crab', None, None, None, None, 'rocket', 'skull'], 1, 397, ['text', 'r', 'u', 'l', 'd'])
sprites1.add_similar_rows(['ghost', None, None, None, 'statue'], 276, 622, ['text', 'r', 'u', 'l', 'd'])
sprites1.add_similar_rows(['bat'], 1, 1081, ['text', 'f1', 'f2', 'f3', 'f4'])
sprites1.add_similar_rows(['cog'], 1, 1167, ['text', 'f1', 'f2', 'f3', 'f4'])
sprites2 = Sheet('sprites/sprites2.png')
sprites2.add_similar_rows([('baba','#D9396A','#FFFFFF'), None, None, None, None, None, None, None, None, None, 'keke', None, 'me', None, 'robot'], 1, 1, ['text','r1','r2','r3','r4','u1','u2','u3','u4','l1','l2','l3','l4','d1','d2','d3','d4','sr','su','sl','sd'])
sprites3 = Sheet('sprites/sprites3.png')
sprites3.add_similar_rows(['algae', None, None, ('flag', '#EDE285', '#EDE285'), None, 'key', 'love', None, None, None, None, 'ufo'], 1, 1, ['text', 'obj'])
sprites3.add_similar_rows(['door', 'flower', None, None, None, 'pillar', ('rock', '#90673E', '#C29E46'), None, ('tile', '#737373', '#242424')], 126, 151, ['text', 'obj'])
sprites3.add_similar_rows(['moon', None, None, 'star', 'tree'], 376, 451, ['text', 'obj'])
sprites3.add_similar_rows(['box', None, 'fire', None, 'jelly'], 751, 1, ['text', 'obj'])
text = Sheet('sprites/text.png')
text.add_similar_rows(['all', None, 'has', None, ('push', '#90673E')], 1, 1, ['text'])
text.add_similar_rows(['is', None, ('you', '#D9396A')], 226, 76, ['text'])
text.add_similar_rows(['and'], 301, 76, ['text'])
text.add_similar_rows([('win', '#F0E484')], 226, 1123, ['text'])
text.add_similar_rows([('stop', '#4B5C1C')], 151, 301, ['text'])
tiles = Sheet('sprites/tiles.png')
tiles.add_similar_rows(['cloud', 'fence', None, 'grass', 'hedge', 'ice', 'lava', None, 'pipe', None, None, 'rubble', None, None, ('wall', '#737373', '#293141'), 'water'], 1, 451, ['text', 'none', 'r', 'u', 'ur', 'l', 'lr', 'ul', 'ulr', 'd', 'dr', 'ud', 'udr', 'dl', 'dlr', 'udl', 'udlr'])
info.add_sheet(sprites1)
info.add_sheet(sprites2)
info.add_sheet(sprites3)
info.add_sheet(text)
info.add_sheet(tiles)
generated = info.generate_grids()

text = TextManager(10)
for i,grid in enumerate(generated[0]):
  text.add_grid(grid, f'baba:grid{i}_anim0.png')
tat.write_json(text.lang, 'resourcepack/assets/baba/lang/en_us.json')
for a,grids in enumerate(generated):
  for i,grid in enumerate(grids):
    grid.image.save(f'resourcepack/assets/baba/textures/grid{i}_anim{a}.png')
  for p in text.providers:
    if 'file' in p:
      p['file'] = p['file'].replace(f'anim{a-1}', f'anim{a}')
  tat.write_json({"providers":text.providers}, f'resourcepack/assets/baba/font/anim{a}.json')

def note_block(val):
  instrument = ['harp','basedrum','snare','hat','bass','flute','bell','guitar','chime','xylophone','iron_xylophone','cow_bell','didgeridoo','bit','banjo','pling'][val//25]
  return (instrument, val % 25)

def instrument(inst):
  return {'harp':'dirt','basedrum':'stone','snare':'sand','hat':'glass','bass':'oak_planks','flute':'clay','bell':'gold_block','guitar':'white_wool','chime':'packed_ice','xylophone':'bone_block','iron_xylophone':'iron_block','cow_bell':'soul_sand','didgeridoo':'pumpkin','bit':'emerald_block','banjo':'hay_block','pling':'glowstone'}[inst]

lines = []
lines2 = []
for t,i in text.ids.items():
  noteblock = note_block(i)
  lines.append(f'execute if block ~ ~ ~ note_block[instrument={noteblock[0]},note={noteblock[1]}] run data modify block ~ ~10 ~ RecordItem.tag set value {{sprite:{t.name},variant:{t.sprite}}}')
  lines2.append(f'execute if data block ~ ~10 ~ RecordItem.tag{{sprite:{t.name},variant:{t.sprite}}} run setblock ~ ~ ~ note_block[instrument={noteblock[0]},note={noteblock[1]}]')
  lines2.append(f'execute if data block ~ ~10 ~ RecordItem.tag{{sprite:{t.name},variant:{t.sprite}}} run setblock ~ ~-1 ~ {instrument(noteblock[0])}')
tat.write_lines(lines, f'datapack/data/baba/functions/io/load_block.mcfunction')
tat.write_lines(lines2, f'datapack/data/baba/functions/io/save_block.mcfunction')

for r in range(text.rows):
  lines = [
    f'data modify storage baba:main text append value \'{{"translate":"baba.empty_tile"}}\''
  ]
  for t,i in text.ids.items():
    translate = {"translate":f"baba.{t.name}.{t.sprite}.row{r}"}
    if t.color is not None:
      translate["color"] = t.color
    lines.append(f'execute if data block ~ ~ ~ RecordItem.tag{{sprite:{t.name},variant:{t.sprite}}} run data modify storage baba:main text[-1] set value \'{json.dumps(translate, separators=(",", ":"))}\'')
  tat.write_lines(lines, f'datapack/data/baba/functions/text/check_tile/row{r}.mcfunction')

blockstate = {}
custom_model = []
get_all = []
for t,i in text.ids.items():
  noteblock = note_block(i)
  placement = text.placement[t]
  for g,grid in enumerate(generated[0]):
    if grid == placement[0]:
      model = {"parent":"baba:parent_display","textures":{"up":f"baba:grid{g}_anim0"},"elements":[{"from":[0,0,0],"to":[16,0,16],"faces":{"up":{"uv":[1.6*placement[2],1.6*placement[1],1.6*placement[2]+1.6,1.6*placement[1]+1.6],"texture":"#up"}}}]}
      blockstate[f'instrument={noteblock[0]},note={noteblock[1]}'] = {'model': f'baba:{t.name}_{t.sprite}','y':90}
      custom_model.append({'predicate':{'custom_model_data':i},'model':f'baba:{t.name}_{t.sprite}'})
      if t.name in ['text'] or t.sprite in ['obj', 'r', 'f1', 'r1']:
        get_all.append(f'give @s note_block{{CustomModelData:{i},BlockStateTag:{{instrument:"{noteblock[0]}",note:"{noteblock[1]}"}},display:{{Name:\'{{"text":"{t.name} {t.sprite}","italic":false}}\'}}}}')
      tat.write_json(model, f'resourcepack/assets/baba/models/{t.name}_{t.sprite}.json')
tat.write_json({"variants":blockstate}, f'resourcepack/assets/minecraft/blockstates/note_block.json')
tat.write_json({"gui_light":"front","display":{"firstperson_righthand":{"rotation":[90,0,0],"translation":[0,0,-5]},"gui":{"rotation":[90,0,0]}}}, f'resourcepack/assets/baba/models/parent_display.json')
tat.write_json({"overrides":custom_model}, f'resourcepack/assets/minecraft/models/item/note_block.json')
tat.write_lines(get_all, f'datapack/data/baba/functions/dev/all_items.mcfunction')
