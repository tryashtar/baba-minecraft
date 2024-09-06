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
  facing_sprites = {}
  other_sprites = []
  facing_prop = source.properties['facing']
  for entry in sprites.values():
    if facing_prop in entry.properties:
      spr = entry.properties[source.properties['sprite']]
      if spr not in facing_sprites:
        facing_sprites[spr] = {}
      facing_sprites[spr][entry.properties[facing_prop]] = entry
    else:
      other_sprites.append(entry)
  blockstates = {}
  state_models = {}
  items = {}
  taken = set()
  for i,(entry,dirs) in enumerate(facing_sprites.items()):
    block,state = block_state(i, exclude_facing=True)
    if block not in state_models:
      state_models[block] = {}
    for d,spr in dirs.items():
      copied_state = state.copy()
      facing = {'up':'east','down':'west','left':'north','right':'south'}[d]
      copied_state['facing'] = facing
      blockstates[spr.sprite] = (block, copied_state)
      state_models[block][ops.state_string(copied_state)] = {'model': spr.model_resource, 'y':90}
      taken.add(json.dumps((block, copied_state), sort_keys=True))
    items[dirs['right']] = (block, state)
  i = 0
  for entry in other_sprites:
    while True:
      block,state = block_state(i)
      dumped = json.dumps((block, state), sort_keys=True)
      if not dumped in taken:
        taken.add(dumped)
        break
      i += 1
    blockstates[entry.sprite] = (block, state)
    items[entry] = (block, state)
    if block not in state_models:
      state_models[block] = {}
    state_models[block][ops.state_string(state)] = {'model': entry.model_resource, 'y':90}
  for block in ['chiseled_bookshelf', 'beehive', 'bee_nest']:
    state_path = os.path.join(resource_pack, f'assets/minecraft/blockstates/{block}.json')
    tat.delete_file(state_path)
    if block in state_models:
      tat.write_json({"variants":state_models[block]}, state_path)
  return (items, blockstates)
