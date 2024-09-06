import os
import tryashtools as tat
import ops

def block_state(val):
  result = {}
  if val < 256:
    for i in range(6):
      result[f'slot_{i}_occupied'] = str(val % 2 == 1).lower()
      val //= 2
    dirs = ['north','south','east','west']
    result['facing'] = dirs[val%len(dirs)]
    val //= len(dirs)
    return ('chiseled_bookshelf', result)
  val -= 256
  honey = [0, 1, 2, 3, 4, 5]
  dirs = ['north','south','east','west']
  result['honey_level'] = str(honey[val%len(honey)])
  val //= len(honey)
  result['facing'] = dirs[val%len(dirs)]
  val //= len(dirs)
  if val == 0:
    return ('beehive', result)
  elif val == 1:
    return ('bee_nest', result)
  else:
    raise ValueError(val)

def create_blockstates(resources, resource_pack):
  blockstates = {}
  state_models = {}
  for i,data in enumerate(resources.values()):
    block,state = block_state(i)
    blockstates[data.sprite] = (block, state)
    if block not in state_models:
      state_models[block] = {}
    state_models[block][ops.state_string(state)] = {'model': data.model_resource, 'y':90}
  for block in ['chiseled_bookshelf', 'beehive', 'bee_nest']:
    state_path = os.path.join(resource_pack, f'assets/minecraft/blockstates/{block}.json')
    tat.delete_file(state_path)
    if block in state_models:
      tat.write_json({"variants":state_models[block]}, state_path)
  return blockstates
