import os
import math
import tryashtools as tat
import sprite
import resources
import background
import ops
import editor
import json

def main():
  os.chdir('..')
  sprite_data = tat.read_yaml('sprites.yaml')
  source = sprite.SpriteCollection(sprite_data)
  sprite_resources = resources.create_sprite_resources(source, 'resourcepack', 'baba')
  editor_resources = resources.create_editor_resources(source, 'resourcepack', 'baba')
  (items, blockstates) = editor.create_blockstates(source, editor_resources, 'resourcepack')
  data = []
  background.generate(source.palettes, ['island', 'flower'], 'datapack', 'resourcepack', 'baba', data)
  generate_reference_ids(source)
  generate_wiggle_fonts(source, sprite_resources)
  generate_spawn_functions(source)
  generate_update_function(source, sprite_resources)
  generate_give_commands(items)
  generate_packing_functions(source, blockstates)
  generate_swapping_function(source, blockstates)
  generate_particles(sprite_data['particles'])
  tat.write_lines(data, os.path.join('datapack/data/baba/function/meta/data.mcfunction'))

def generate_particles(particles):
  tat.delete_folder('datapack/data/baba/function/display/particle/init')
  tat.delete_folder('datapack/data/baba/function/display/particle/tick')
  tat.delete_folder('resourcepack/assets/baba/models/item/particles')
  parent_init = ['tag @s add init']
  parent_tick = [
    'scoreboard players remove @s life 1',
    'kill @s[scores={life=..0}]'
  ]
  for particle in particles:
    name = particle['name']
    scale = particle.get('scale', 1)
    speed = particle['speed']
    life = particle['life']
    textures = list(sorted(map(tat.base_name, tat.get_files(f'resourcepack/assets/baba/textures/particles/{name}')), key=int))
    parent_init.append(f'execute if entity @s[tag={name}_particle] run function baba:display/particle/init/{name}')
    parent_tick.append(f'execute if entity @s[tag={name}_particle] run function baba:display/particle/tick/{name}')
    init_lines = [
      f'item replace entity @s contents with splash_potion[item_model="baba:particles/{name}/{textures[0]}"]'
    ]
    tick_lines = []
    if color := particle.get('color'):
      if color == 'preset':
        init_lines.append('execute store result entity @s item.components."minecraft:potion_contents".custom_color int 1 run scoreboard players get @s color')
      else:
        init_lines.extend([
          f'scoreboard players set color baba {int(color[1:],16)}',
          'execute store result storage baba:main context.color int 1 run scoreboard players get color baba',
          'function baba:display/palette with storage baba:main context',
          'execute store result entity @s item.components."minecraft:potion_contents".custom_color int 1 run scoreboard players get color baba'
        ])
    init_lines.extend([
      f'data modify storage baba:main merge set value {{start_interpolation:0,interpolation_duration:{life},transformation:{{translation:[0f,0f,0f]}}}}',
      f'execute store result storage baba:main merge.transformation.translation[0] float {speed/65536:.20f} run random value -65536..65536',
      f'execute store result storage baba:main merge.transformation.translation[2] float {speed/65536:.20f} run random value -65536..65536',
      'data modify entity @s {} merge from storage baba:main merge',
      f'scoreboard players set @s life {life}',
    ])
    tat.write_lines(init_lines, f'datapack/data/baba/function/display/particle/init/{name}.mcfunction')
    for i,tx in enumerate(textures):
      tat.write_json({"parent":"baba:sprite","textures":{"up":f"baba:particles/{name}/{tx}"},"display":{"fixed":{"rotation":[0,90,0],"scale":[scale,0.001,scale]}}}, f'resourcepack/assets/baba/models/item/particles/{name}/{tx}.json')
      if i > 0:
        tick_lines.append(f'execute if score @s life matches {math.floor(life*(len(textures)-i)/len(textures))} run item modify entity @s contents {{function:"set_components",components:{{item_model:"baba:particles/{name}/{tx}"}}}}')
    tat.write_lines(tick_lines, f'datapack/data/baba/function/display/particle/tick/{name}.mcfunction')
  tat.write_lines(parent_init, 'datapack/data/baba/function/display/particle/init.mcfunction')
  tat.write_lines(parent_tick, 'datapack/data/baba/function/display/particle/tick.mcfunction')

def generate_swapping_function(source, blockstates):
  sprite_prop = source.properties['sprite']
  text_prop = source.properties['text']
  swap = []
  pairs = {}
  for spr in blockstates.keys():
    if spr.properties[sprite_prop] == 'text':
      text = spr.properties[text_prop]
      if text not in pairs:
        pairs[text] = {}
      pairs[text]['text'] = spr
    else:
      obj = spr.properties[sprite_prop]
      if obj not in pairs:
        pairs[obj] = {}
      if 'sprite' not in pairs[obj]:
        pairs[obj]['sprite'] = []
      pairs[obj]['sprite'].append(spr)
  for pair in pairs.values():
    if 'text' in pair and 'sprite' in pair:
      (text_block, text_state) = blockstates[pair['text']]
      (obj_block, obj_state) = blockstates[pair['sprite'][0]]
      swap.append(f'execute if block ~ ~ ~ {text_block}[{ops.state_string(text_state)}] run return run setblock ~ ~ ~ {obj_block}[{ops.state_string(obj_state)}]')
      for entry in pair['sprite']:
        (obj_block, obj_state) = blockstates[entry]
        swap.append(f'execute if block ~ ~ ~ {obj_block}[{ops.state_string(obj_state)}] run return run setblock ~ ~ ~ {text_block}[{ops.state_string(text_state)}]')
  tat.write_lines(swap, 'datapack/data/baba/function/dev/tool/text_swap/convert.mcfunction')

def generate_packing_functions(source, blockstates):
  tat.delete_folder('datapack/data/baba/function/editor/pack/block')
  tat.delete_folder('datapack/data/baba/function/editor/unpack/block')
  pack_lines = []
  dir_checks = {}
  for obj in source.objects.values():
    spritelist = list(obj.filter_sprites(lambda x: 'editor' in x.attributes).items())
    lines = []
    for spr,props in spritelist:
      text_val = props.get(source.properties['text'])
      sprite_val = props.get(source.properties['sprite'])
      extra_data = None
      if text_val is not None:
        extra_data = f'text:"{text_val}"'
      if obj.name != 'text':
        extra_data = f'text:"{sprite_val}"'
      set_storage = ops.create_storage(spr.properties, extra_data)
      check_rest = ops.create_storage(ops.filter_properties(props, lambda x: x.name!='sprite'))
      block,state = blockstates[spr]
      this_state = state.copy()
      state_str = ops.state_string(this_state)
      direction = this_state['facing']
      if direction not in dir_checks:
        dir_checks[direction] = []
        pack_lines.append(f'execute if block ~ ~ ~ #baba:editor_blocks[facing={direction}] run function baba:editor/pack/block/{direction}')
      del this_state['facing']
      dir_checks[direction].append(f'execute if block ~ ~ ~ {block}[{ops.state_string(this_state)}] run return run data modify storage baba:main tile append value {{{set_storage}}}')
      if len(spritelist) == 1:
        b,s = blockstates[spritelist[0][0]]
        lines.append(f'setblock ~ ~ ~ {b}[{ops.state_string(s)}]')
      else:
        lines.append(f'execute if data storage baba:main tile{{{check_rest}}} run return run setblock ~ ~ ~ {block}[{state_str}]')
    if len(lines) > 0:
      tat.write_lines(lines, f'datapack/data/baba/function/editor/unpack/block/{ops.id_hash(obj.name)}.mcfunction')
    for block_dir,lines in dir_checks.items():
      tat.write_lines(lines, f'datapack/data/baba/function/editor/pack/block/{block_dir}.mcfunction')
  pack_lines.extend([
    'data modify storage baba:main tile[-1].extra set from block ~ ~ ~ Items[0].components."minecraft:custom_data".baba',
    'data modify storage baba:main tile[-1].extra set from block ~ ~ ~ bees[0].entity_data.baba',
    'execute positioned ~ ~1 ~ if block ~ ~ ~ #baba:editor_blocks run function baba:editor/pack/block'
  ])
  tat.write_lines(pack_lines, 'datapack/data/baba/function/editor/pack/block.mcfunction')

def next_char(char):
  char += 1
  while chr(char) == '§':
    char += 1
  return char

def generate_give_commands(items):
  tat.delete_folder('datapack/data/baba/function/dev/give')
  get_all = []
  loot_tables = {}
  lang = {"baba.translate":"%1$s"}
  font = [{"type":"space","advances":{" ":14}}]
  message = ["\n"]
  char = 33
  i = 0
  for data,(block, state) in items.items():
    state_str = ','.join(map(lambda x:f'{x[0]}:"{str(x[1]).lower()}"', state.items()))
    properties = data.properties.copy()
    description = data.sprite.display(properties, '.', '-')
    simple_name = data.sprite.display(properties, ' ', '=')
    lang[f'baba.sprite.{description}'] = chr(char) + chr(next_char(char)) + " "
    font.append({"type":"bitmap","file":data.texture_resource + ".png","height":16,"ascent":12,"chars":[chr(char)]})
    font.append({"type":"bitmap","file":data.texture_resource + ".png","height":-16,"ascent":-32768,"chars":[chr(next_char(char))]})
    cmd = f'give @s {block}[item_name=\'"{simple_name}"\',item_model="{data.model_component}",block_state={{{state_str}}},custom_data={{baba:{{tile:1b}}}}]'
    get_all.append(cmd)
    tat.write_lines([cmd], f'datapack/data/baba/function/dev/give/{description}.mcfunction')
    message.append({"translate":"baba.translate","fallback":"%2$s","with":[{"translate":f'baba.sprite.{description}',"font":"baba:sprites"},simple_name],"clickEvent":{"action":"run_command","value":f'/function baba:dev/give/{description}'},"hoverEvent":{"action":"show_text","contents":simple_name}})
    i += 1
    if i % 12 == 0:
      message.append("\n\n")
    if block not in loot_tables:
      loot_tables[block] = (list(state.keys()), [])
    loot_tables[block][1].append({"rolls":1,"entries":[{"type":"item","name":block,"conditions":[{"condition":"block_state_property","block":block,"properties":state}],"functions":[{"function":"set_name","name":{"text":simple_name,"italic":False}},{"function":"set_components","components":{"item_model":data.model_component}},{"function":"set_custom_data","tag":"{baba:{tile:1b}}"}]}]})
    char = next_char(char)
    char = next_char(char)
  tat.write_lines(get_all, 'datapack/data/baba/function/dev/all_items.mcfunction')
  for block in ['chiseled_bookshelf', 'beehive', 'bee_nest']:
    path = f'datapack/data/minecraft/loot_table/blocks/{block}.json'
    tat.delete_file(path)
    if block in loot_tables:
      keys, table = loot_tables[block]
      tat.write_json({"type":"block","functions":[{"function":"copy_state","block":block,"properties":keys}],"pools":table}, path)
  tat.write_json(lang, 'resourcepack/assets/baba/lang/en_us.json')
  tat.write_json({"providers":font}, 'resourcepack/assets/baba/font/sprites.json')
  give_menu = [
    f'tellraw @s {json.dumps(message, separators=(',', ':'))}'
  ]
  tat.write_lines(give_menu, 'datapack/data/baba/function/dev/menu.mcfunction')

def generate_spawn_functions(source):
  text_prop = source.properties['text']
  sprite_prop = source.properties['sprite']
  tat.delete_folder('datapack/data/baba/function/board/spawn')
  objectlist = source.objects.values()
  for obj in objectlist:
    if obj.name == 'text':
      for spr in obj.sprites:
        lines = []
        scores = []
        spr_text = spr.properties[text_prop]
        props = ops.filter_properties(spr.properties, lambda x: 'spawn' in x.attributes)
        props[source.properties['appearance']] = props[source.properties['sprite']]
        for prop,val in list(props.items()):
          if prop.kind == 'score':
            del props[prop]
            scores.append((prop,val))
        summon, data = ops.create_data(props, [f'text:"{spr_text}"'])
        lines.append(f'data merge entity @s {summon}')
        if len(data) > 0:
          lines.append(f'item replace entity @s contents with potion[custom_data={{baba:{{{",".join(data)}}}}}]')
        else:
          lines.append('item replace entity @s contents with potion')
        for (score,val) in sorted(scores, key=lambda x: x[0].name):
          lines.append(f'scoreboard players set @s {score.name} {score.convert(val)}')
        lines.append('scoreboard players operation @s text_id > @e[type=item_display,tag=baba.object,tag=active,tag=is_text] text_id')
        lines.append('scoreboard players add @s text_id 1')
        lines.append('scoreboard players set @s facing 4')
        lines.append('scoreboard players set @s walk 0')
        lines.append('execute as @e[type=marker,tag=baba.conversion,tag=active,scores={sprite=397973},predicate=baba:match_score/text] run function baba:board/spawn_convert')
        tat.write_lines(lines, f'datapack/data/baba/function/board/spawn/text/{ops.id_hash(spr_text)}.mcfunction')
    else:
      variables = obj.filter_sprites(lambda x: 'spawn' in x.attributes)
      for spr,props in variables.items():
        lines = []
        scores = []
        props[source.properties['appearance']] = props[source.properties['sprite']]
        for prop,val in list(props.items()):
          if prop.kind == 'score':
            del props[prop]
            scores.append((prop,val))
        spr_text = spr.properties[sprite_prop]
        summon, data = ops.create_data(props, [f'text:"{spr_text}"'])
        lines.append(f'data merge entity @s {summon}')
        if len(data) > 0:
          lines.append(f'item replace entity @s contents with potion[custom_data={{baba:{{{",".join(data)}}}}}]')
        else:
          lines.append('item replace entity @s contents with potion')
        for (score,val) in sorted(scores, key=lambda x: x[0].name):
          lines.append(f'scoreboard players set @s {score.name} {score.convert(val)}')
        lines.append('scoreboard players set @s facing 4')
        lines.append('scoreboard players set @s walk 0')
        lines.append('execute as @e[type=marker,tag=baba.conversion,tag=active,scores={text=0},predicate=baba:match_score/sprite] run function baba:board/spawn_convert')
        tat.write_lines(lines, f'datapack/data/baba/function/board/spawn/{obj.id}.mcfunction')

def generate_reference_ids(source):
  text_map = []
  text_prop = source.properties['text']
  for spr in source.objects['text'].filter_sprites(lambda x: x == text_prop):
    if text_prop in spr.properties:
      text = spr.properties[text_prop]
      text_map.append(f'{text}: {ops.id_hash(text)}')
  tat.write_lines(text_map, 'text_ids.txt')

def generate_wiggle_fonts(source, rsources):
  text_prop = source.properties['text']
  for spr in source.objects['text'].sprites:
    if text_prop not in spr.properties:
      continue
    text = spr.properties[text_prop]
    if text in ('baba','is','you'):
      providers = []
      for h in range(len(spr.image.frames)):
        chars = ['\u0000'] * len(spr.image.frames)
        chars[h] = str(h)
        path = rsources[spr].texture_resource + '.png'
        providers.append({"type":"bitmap","file":path,"height":12,"ascent":8,"chars":chars})
      tat.write_json({"providers":providers}, f'resourcepack/assets/baba/font/icon_{text}.json')

def generate_update_function(source, rsources):
  tat.delete_folder('datapack/data/baba/function/display/object')
  tat.delete_folder('datapack/data/baba/function/display/text')
  linecache = {}
  text_prop = source.properties["text"]
  for obj in list(source.objects.values()) + list(source.alt_images.values()):
    spritelist = list(obj.filter_sprites(lambda x: 'sprite' in x.attributes).items())
    if obj.name == 'text':
      lines = [
        'execute store result storage baba:main context.text int 1 run scoreboard players get @s text',
        'function baba:display/text.macro with storage baba:main context'
      ]
      for spr,props in spritelist:
        textlines = [f'item modify entity @s contents {{function:"set_components",components:{{item_model:"{rsources[spr].model_component}"}}}}']
        prop = props[text_prop]
        tat.write_lines(textlines, f'datapack/data/baba/function/display/text/{text_prop.convert(prop)}.mcfunction')

    else:
      if obj.name not in linecache:
        linecache[obj.name] = []
      lines = linecache[obj.name]
      for spr,props in spritelist:
        selector = ops.create_selector(ops.filter_properties(props, lambda x: x.name!="sprite"))
        if selector == '':
          lines.append(f'item modify entity @s contents {{function:"set_components",components:{{item_model:"{rsources[spr].model_component}"}}}}')
        else:
          lines.append(f'execute if entity @s[{selector}] run return run item modify entity @s contents {{function:"set_components",components:{{item_model:"{rsources[spr].model_component}"}}}}')
    tat.write_lines(lines, f'datapack/data/baba/function/display/object/{ops.id_hash(obj.name)}.mcfunction')
  for overlay in source.overlays.values():
    lines = []
    for prop,op in overlay.property_mods.items():
      lines.append(f'scoreboard players operation {prop} baba = @s {op["operands"][0]}')
      if op['operation'] == 'modulo':
        lines.append(f'scoreboard players operation {prop} baba %= #{op["operands"][1]} baba')
    for spr in overlay.sprites:
      props = ops.filter_properties(spr.properties, lambda x: 'sprite' in x.attributes)
      special_checks = []
      for prop in list(props.keys()):
        if prop.name in overlay.property_mods:
          special_checks.append((prop, props[prop]))
          del props[prop]
      del props[source.properties['sprite']]
      selector = ops.create_selector(props)
      final = 'execute '
      for prop,spec in special_checks:
        final += f'if score {prop.name} baba matches {prop.convert(spec)} '
      final += f'if entity @s[{selector}] run summon item_display ~ ~ ~ {{teleport_duration:3,width:1f,height:0.1f,item_display:"fixed",item:{{id:"potion",count:1,components:{{item_model:"{rsources[spr].model_component}",potion_contents:{{custom_color:{int(spr.properties[source.properties["color"]][1:],16)}}}}}}},Tags:["baba","baba.overlay","active"]}}'
      lines.append(final)
    if overlay.name == 'level_icon':
      lines.append('execute if entity @s[tag=complete] run item modify entity @e[type=item_display,tag=baba.overlay,distance=..0.001] contents {function:"set_components",components:{potion_contents:{custom_color:4676017}}}')
    lines.append('execute as @e[type=item_display,tag=baba.overlay,distance=..0.001] run ride @s mount @e[type=item_display,tag=baba.object,distance=..0.001,limit=1]')
    tat.write_lines(lines, f'datapack/data/baba/function/display/object/{overlay.name}.mcfunction')

if __name__ == '__main__':
  main()
