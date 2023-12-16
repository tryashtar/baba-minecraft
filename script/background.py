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

def generate(palettes, backgrounds, data_pack, resource_pack, namespace):
  texture_folder = os.path.join(resource_pack, 'assets', namespace, 'textures/background')
  model_folder = os.path.join(resource_pack, 'assets', namespace, 'models/background')
  background_load = os.path.join(data_pack, 'data', namespace, 'functions/editor/load/background')
  tat.delete_folder(model_folder)
  tat.delete_folder(background_load)
  blockstates = {}
  shroom_id = 0
  terra_id = 0
  for bg in backgrounds:
    place = []
    for x in range(0,11):
      for y in range(0,6):
        (shroom, state) = shroom_state(shroom_id)
        place.append(f'setblock ~{16-(3*y)} ~-1 ~{1+(3*x)} {shroom}[{state}]')
        if shroom not in blockstates:
          blockstates[shroom] = {}
        blockstates[shroom][state] = {"model":f"{namespace}:background/{bg}/{x}.{y}","y":90}
        model = {"textures":{"up":f"{namespace}:background/{bg}","particle":"#up"},"elements":[{"from":[-16,0,-16],"to":[32,16,32],"faces":{"up":{"uv":[round(x/11*16,3),round(y/6*16,3),round((x+1)/11*16,3),round((y+1)/6*16,3)],"texture":"#up"}}}]}
        tat.write_json(model, os.path.join(model_folder, f'{bg}/{x}.{y}.json'))
        shroom_id += 1
    tat.write_lines(place, os.path.join(background_load, f'{bg}.mcfunction'))
  for j,t in enumerate(['floor','wall']):
    background = []
    for i,(n,p) in enumerate(palettes.items()):
      color = p[['#080808','#15181f'][j]]
      texture = PIL.Image.new('RGB', (1,1), PIL.ImageColor.getrgb(color))
      texture.save(os.path.join(texture_folder, f'{n}_{t}.png'))
      model = {"parent":"baba:background_block","textures":{"all":f"{namespace}:background/{n}_{t}"}}
      tat.write_json(model, os.path.join(model_folder, f'{n}_{t}.json'))
      (block, state) = terracotta_state(terra_id, t=='floor')
      if block not in blockstates:
        blockstates[block] = {}
      terra_id += 1
      blockstates[block][state] = {"model":f"{namespace}:background/{n}_{t}","y":90}
      background.append(f'execute if score palette baba matches {i} run setblock ~ ~-1 ~ {block}[{state}]')
    if t == 'floor':
      background.append('execute if score level_background baba matches 1.. run setblock ~ ~-1 ~ barrier')
    tat.write_lines(background, os.path.join(background_load, f'{t}.mcfunction'))
  for k,v in blockstates.items():
    tat.write_json({"variants":v}, os.path.join(resource_pack, f'assets/minecraft/blockstates/{k}.json'))
