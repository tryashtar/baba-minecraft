def filter_properties(properties, check):
  props = properties.copy()
  for p in properties:
    if not check(p):
      del props[p]
  return props

def state_string(state):
  return ','.join(map(lambda x: f'{x[0]}={str(x[1]).lower()}', state.items()))

def create_selector(properties, extra_scores=None):
  result = []
  tags = []
  nbt_true = []
  nbt_false = []
  scores = []
  for m,val in properties.items():
    if m.kind == 'tag':
      tags.append(('!' if val == False else '') + m.convert(val))
    elif m.kind == 'score':
      scores.append(m.name+'='+m.convert(val))
    elif m.kind == 'property':
      tags.append(('!' if val == False else '') + 'prop.' + m.name)
    else:
      raise ValueError(m.kind)
  if len(tags) > 0:
    result.append(','.join(['tag='+x for x in tags]))
  if extra_scores is not None:
    scores.extend(extra_scores)
  if len(scores) > 0:
    result.append('scores={'+','.join([x for x in scores])+'}')
  if len(nbt_true) > 0:
    result.append('nbt={item:{tag:{properties:['+','.join(nbt_true)+']}}}')
  for f in nbt_false:
    result.append('nbt=!{item:{tag:{properties:['+f+']}}}')
  return ','.join(result)

def create_summon(properties, extra_data=None):
  tags = ['baba.object','spawn','assign','dirty']
  data = []
  scores = []
  nbt = ['teleport_duration:3','width:1f','height:0.1f','item_display:"fixed"']
  for m,val in properties.items():
    if m.kind == 'tag' and val != False:
      tags.append(m.convert(val))
    elif m.kind == 'score':
      scores.append(f'{m.name}:{m.convert(val)}')
    else:
      data.append(f'{m.name}:{m.convert(val)}')
  if len(tags) > 0:
    nbt.append('Tags:[' + ','.join([f'"{x}"' for x in tags]) + ']')
  if extra_data is not None:
    data.extend(extra_data)
  if len(scores) > 0:
    data.append('scores:{' + ','.join(scores) + '}')
  nbt.append('item:{id:"minecraft:potion",Count:1b,tag:{' + ','.join(data) + '}}')
  return f'summon item_display ~ ~ ~ {{{",".join(nbt)}}}'

def create_storage(properties, data=None):
  tags = []
  scores = []
  nbt = []
  for m,val in properties.items():
    if m.kind == 'tag' and val != False:
      tags.append(m.convert(val))
    elif m.kind == 'score':
      scores.append(f'{m.name}:{m.convert(val)}')
  if len(tags) > 0:
    nbt.append('tags:[' + ','.join([f'"{x}"' for x in tags]) + ']')
  if len(scores) > 0:
    nbt.append('scores:{' + ','.join(scores) + '}')
  if data is not None:
    nbt.append('data:{' + data + '}')
  return ','.join(nbt)

too_big = {}
def id_hash(string):
  if string == 'without':
    return -100
  total = 0
  for i,c in enumerate(reversed(string)):
    total += 27**i * (ord(c) - 96)
  if total > 2147483647:
    if string not in too_big:
      too_big[string] = -len(too_big) - 1
    return too_big[string]
  return total

def reverse_hash(num):
  result = ""
  while num > 0:
    num,r = divmod(num, 27)
    result += chr(r + 96)
  return result[::-1]
