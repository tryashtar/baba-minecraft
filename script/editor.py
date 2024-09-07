import os
import tryashtools as tat
import ops
import resources
import sprite
import json

def block_state(val, exclude_facing=False):
  result = {}
  shelf_states = 2**6
  dirs = ['north','south','east','west']
  if not exclude_facing:
    shelf_states *= 4
  if val < shelf_states:
    for i in range(6):
      result[f'slot_{i}_occupied'] = str(val % 2 == 1).lower()
      val //= 2
    if not exclude_facing:
      result['facing'] = dirs[val%len(dirs)]
      val //= len(dirs)
    return ('chiseled_bookshelf', result)
  val -= shelf_states
  honey = [0, 1, 2, 3, 4, 5]
  result['honey_level'] = str(honey[val%len(honey)])
  val //= len(honey)
  if not exclude_facing:
    result['facing'] = dirs[val%len(dirs)]
    val //= len(dirs)
  if val == 0:
    return ('beehive', result)
  elif val == 1:
    return ('bee_nest', result)
  else:
    raise ValueError(val)

def create_blockstates(source: sprite.SpriteCollection, sprites: dict[sprite.BabaObject, resources.SpriteResources], resource_pack):
  blockstates = {}
  state_models = {}
  items = {}
  
  sprite_prop = source.properties['sprite']
  text_prop = source.properties['text']
  part_prop = source.properties['part']
  special_prop = source.properties['special']
  sorted_items = list(sprites.items())
  def sort_key(item):
    if text_prop in item.properties:
      part = item.properties[part_prop]
      text = item.properties[text_prop]
      if item.properties.get(special_prop, False):
        return (3, part, text)
      if part == 'noun':
        return (1, text)
      elif part == 'property':
        return (2, text)
      elif part == 'letter':
        return (4, len(text), text)
      else:
        return (3, part, text)
    else:
      return (1, item.properties[sprite_prop], 2)
  sorted_items.sort(key=lambda x: sort_key(x[0]))
  
  i = 0
  for _,entry in sorted_items:
    block,state = block_state(i)
    blockstates[entry.sprite] = (block, state)
    items[entry] = (block, state)
    if block not in state_models:
      state_models[block] = {}
    state_models[block][ops.state_string(state)] = {'model': entry.model_resource, 'y':90}
    i += 1
  for block in ['chiseled_bookshelf', 'beehive', 'bee_nest']:
    state_path = os.path.join(resource_pack, f'assets/minecraft/blockstates/{block}.json')
    tat.delete_file(state_path)
    if block in state_models:
      tat.write_json({"variants":state_models[block]}, state_path)
  return (items, blockstates)
