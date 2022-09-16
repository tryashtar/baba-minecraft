import tryashtools as tat
import PIL.Image
import itertools
import numpy as np

class Info:
  def __init__(self):
    self.sheets = []
    self.char = '\ue000'
  def next_char(self):
    self.char = chr(ord(self.char)+1)
    return self.char
  def add_sheet(self, sheet):
    self.sheets.append(sheet)
  def generate_grids(self):
    result = [[],[],[]]
    for h,grids in enumerate(result):
      grid = Grid()
      grids.append(grid)
      for sheet in self.sheets:
        for row in sheet.rows:
          for t,tile in enumerate(row.tiles):
            sprite = Tile(row.name, tile, h, sheet.image.crop((row.x+(25*t),row.y+(25*h),row.x+(25*t)+24,row.y+(25*h)+24)))
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
  def __init__(self, name, sprite, anim, image):
    self.name = name
    self.sprite = sprite
    self.anim = anim
    self.image = image

info = Info()
sprites1 = Sheet('sprites/sprites1.png')
sprites1.add_similar_rows(['belt'], 1, 85, ['text', 'r1', 'r2', 'r3', 'r4', 'u1', 'u2', 'u3', 'u4', 'l1', 'l2', 'l3', 'l4', 'd1', 'd2', 'd3', 'd4'])
sprites1.add_similar_rows(['bug', 'crab', None, None, None, None, 'rocket', 'skull'], 1, 397, ['text', 'r', 'u', 'l', 'd'])
sprites1.add_similar_rows(['ghost', None, None, None, 'statue'], 276, 622, ['text', 'r', 'u', 'l', 'd'])
sprites1.add_similar_rows(['bat'], 1, 1081, ['text', 'f1', 'f2', 'f3', 'f4'])
sprites1.add_similar_rows(['cog'], 1, 1167, ['text', 'f1', 'f2', 'f3', 'f4'])
sprites2 = Sheet('sprites/sprites2.png')
sprites2.add_similar_rows(['baba', None, None, None, None, None, None, None, None, None, 'keke', None, 'me', None, 'robot'], 1, 1, ['text','r1','r2','r3','r4','u1','u2','u3','u4','l1','l2','l3','l4','d1','d2','d3','d4','sr','su','sl','sd'])
sprites3 = Sheet('sprites/sprites3.png')
sprites3.add_similar_rows(['algae', None, None, 'flag', None, 'key', 'love', None, None, None, None, 'ufo'], 1, 1, ['text', 'obj'])
sprites3.add_similar_rows(['door', 'flower', None, None, None, 'pillar', 'rock', None, 'tile'], 126, 151, ['text', 'obj'])
sprites3.add_similar_rows(['moon', None, None, 'star', 'tree'], 376, 451, ['text', 'obj'])
sprites3.add_similar_rows(['box', None, 'fire', None, 'jelly'], 751, 1, ['text', 'obj'])
text = Sheet('sprites/text.png')
text.add_similar_rows(['all', None, 'has', None, 'push'], 1, 1, ['text'])
text.add_similar_rows(['is', None, 'you'], 226, 76, ['active'])
text.add_similar_rows(['and'], 301, 76, ['active'])
tiles = Sheet('sprites/tiles.png')
tiles.add_similar_rows(['cloud', 'fence', None, 'grass', 'hedge', 'ice', 'lava', None, 'pipe', None, None, 'rubble', None, None, 'wall', 'water'], 1, 451, ['none', 'r', 'u', 'ur', 'l', 'lr', 'ul', 'ulr', 'd', 'dr', 'ud', 'udr', 'dl', 'dlr', 'udl', 'udlr'])
info.add_sheet(sprites1)
info.add_sheet(sprites2)
info.add_sheet(sprites3)
info.add_sheet(text)
info.add_sheet(tiles)
generated = info.generate_grids()
chargrids = {}
lang = {}
for i,grid in enumerate(generated[0]):
  chargrids[i] = {}
  for r in range(-1, 10):
    chargrids[i][r] = [''.join(['\u0000' if x is None else info.next_char() for x in y]) for y in grid.tiles]
    for g in itertools.chain.from_iterable(grid.tiles):
      if g is not None and r>-1:
        lang[f'baba.{g.name}.{g.sprite}.row{r}'] = 'hi'
tat.write_json(lang, 'resourcepack/assets/baba/lang/en_us.json')
for a,grids in enumerate(generated):
  for i,grid in enumerate(grids):
    grid.image.save(f'resourcepack/assets/baba/textures/grid{i}_anim{a}.png')
  providers = [{"type":"space","advances":{" ":24, "!":-24}}]
  for i,grids in chargrids.items():
    for r,g in grids.items():
      providers.append({"type":"bitmap","file":f"baba:grid{i}_anim{a}","height":24,"ascent":-32000 if r==-1 else -r*24,"chars":g})
  tat.write_json({"providers":providers}, f'resourcepack/assets/baba/font/anim{a}.json')
