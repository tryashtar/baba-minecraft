import os
import PIL.Image
import PIL.ImageColor
import tryashtools as tat

def shroom_state(val):
  dirs = ['up','down','north','south','east','west']
  result = []
  for m in dirs:
    result.append(f'{m}={str(val%2==1).lower()}')
    val = val // 2
  block = ['brown_mushroom_block', 'red_mushroom_block', 'mushroom_stem'][val%3]
  return (block, ','.join(result))

def terracotta_state(val, half):
  dirs = ['north','south','east','west']
  state = f'facing={dirs[val%len(dirs)]}'
  val = val // len(dirs)
  blocks = ['white', 'orange', 'magenta', 'light_blue', 'yellow', 'lime', 'pink', 'gray'] if half else ['light_gray', 'cyan', 'purple', 'blue', 'brown', 'green', 'red', 'black']
  block = blocks[val%len(blocks)]+'_glazed_terracotta'
  val = val // len(blocks)
  return (block, state)

def generate(palettes, backgrounds, data_pack, resource_pack, namespace, data):
  texture_folder = os.path.join(resource_pack, 'assets', namespace, 'textures/background')
  model_folder = os.path.join(resource_pack, 'assets', namespace, 'models/background')
  background_load = os.path.join(data_pack, 'data', namespace, 'function/editor/load/background')
  tat.delete_folder(model_folder)
  tat.delete_folder(background_load)
  blockstates = {}
  shroom_id = 0
  terra_id = 0
  palette_data = []
  for n,p in palettes.items():
    stuff = []
    terra_id += 1
    colors = []
    for oldcol,tocol in p.items():
      colors.append(f'"{int(oldcol[1:],16)}":{int(tocol[1:],16)}')
    stuff.append(f'colors:{{{",".join(colors)}}}')
    palette_data.append(f'{n}:{{{",".join(stuff)}}}')
  data.append(f'data modify storage baba:main data.palettes set value {{{",".join(palette_data)}}}')
