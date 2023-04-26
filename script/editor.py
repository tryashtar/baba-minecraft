import os
import tryashtools as tat
import ops

def bookshelf_state(val):
  og_val = val
  result = {}
  for i in range(6):
    result[f'slot_{i}_occupied'] = val % 2 == 1
    val //= 2
  dir = ['north','south','east','west']
  result['facing'] = dir[val%len(dir)]
  val //= len(dir)
  if val > 0:
    raise ValueError(og_val)
  return result

def create_blockstates(resources, resource_pack):
  blockstates = {}
  state_model = {}
  item_model = []
  for i,data in enumerate(resources.values()):
    state = bookshelf_state(i)
    blockstates[data.sprite] = state
    state_model[ops.state_string(state)] = {'model': data.model_resource, 'y':90}
    item_model.append({"predicate":{"custom_model_data":data.custom_model_data},"model":data.model_resource})
  tat.write_json({"variants":state_model}, os.path.join(resource_pack, 'assets/minecraft/blockstates/chiseled_bookshelf.json'))
  tat.write_json({"parent": "minecraft:block/chiseled_bookshelf","overrides":item_model}, os.path.join(resource_pack, 'assets/minecraft/models/item/chiseled_bookshelf.json'))

  return blockstates
