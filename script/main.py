import os
import math
import tryashtools as tat
import sprite
import resources
import background
import ops
import editor

def main():
  os.chdir('..')
  sprite_data = tat.read_yaml('sprites.yaml')
  source = sprite.SpriteCollection(sprite_data)
  sprite_resources = resources.create_sprite_resources(source, 'resourcepack', 'baba')
  editor_resources = resources.create_editor_resources(source, 'resourcepack', 'baba')
  blockstates = editor.create_blockstates(editor_resources, 'resourcepack')
  data = []
  background.generate(source.palettes, ['island', 'flower'], 'datapack', 'resourcepack', 'baba', data)
  generate_reference_ids(source)
  generate_wiggle_fonts(source, sprite_resources)
  generate_spawn_functions(source)
  generate_update_function(source, sprite_resources)
  generate_give_commands(editor_resources, blockstates)
  generate_packing_functions(source, blockstates)
  generate_particles(sprite_data['particles'])
  tat.write_lines(data, os.path.join('datapack/data/baba/functions/meta/data.mcfunction'))

def generate_particles(particles):
  cmd = 1
  model = []
  tat.delete_folder('datapack/data/baba/functions/display/particle/init')
  tat.delete_folder('datapack/data/baba/functions/display/particle/tick')
  tat.delete_folder('resourcepack/assets/baba/models/particles')
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
    parent_init.append(f'execute if entity @s[tag={name}_particle] run function baba:display/particle/init/{name}')
    parent_tick.append(f'execute if entity @s[tag={name}_particle] run function baba:display/particle/tick/{name}')
    init_lines = [
      f'item replace entity @s container.0 with splash_potion{{CustomModelData:{cmd}}}'
    ]
    tick_lines = []
    if color := particle.get('color'):
      if color == 'preset':
        init_lines.append('execute store result entity @s item.tag.CustomPotionColor int 1 run scoreboard players get @s color')
      else:
        init_lines.extend([
          f'scoreboard players set color baba {int(color[1:],16)}',
          'execute store result storage baba:main context.color int 1 run scoreboard players get color baba',
          'function baba:display/palette with storage baba:main context',
          'execute store result entity @s item.tag.CustomPotionColor int 1 run scoreboard players get color baba'
        ])
    init_lines.extend([
      f'data modify storage baba:main merge set value {{start_interpolation:0,interpolation_duration:{life},transformation:{{translation:[0f,0f,0f]}}}}',
      f'execute store result storage baba:main merge.transformation.translation[0] float {speed/65536:.20f} run random value -65536..65536',
      f'execute store result storage baba:main merge.transformation.translation[2] float {speed/65536:.20f} run random value -65536..65536',
      'data modify entity @s {} merge from storage baba:main merge',
      f'scoreboard players set @s life {life}',
    ])
    tat.write_lines(init_lines, f'datapack/data/baba/functions/display/particle/init/{name}.mcfunction')
    textures = list(sorted(map(tat.base_name, tat.get_files(f'resourcepack/assets/baba/textures/particles/{name}')), key=int))
    for i,tx in enumerate(textures):
      model.append({"predicate":{"custom_model_data":cmd},"model":f"baba:particles/{name}/{tx}"})
      tat.write_json({"parent":"baba:sprite","textures":{"up":f"baba:particles/{name}/{tx}"},"display":{"fixed":{"rotation":[0,90,0],"scale":[scale,0.001,scale]}}}, f'resourcepack/assets/baba/models/particles/{name}/{tx}.json')
      if i > 0:
        tick_lines.append(f'execute if score @s life matches {math.floor(life*(len(textures)-i)/len(textures))} run data modify entity @s item.tag.CustomModelData set value {cmd}')
      cmd += 1
    tat.write_lines(tick_lines, f'datapack/data/baba/functions/display/particle/tick/{name}.mcfunction')
  tat.write_lines(parent_init, 'datapack/data/baba/functions/display/particle/init.mcfunction')
  tat.write_lines(parent_tick, 'datapack/data/baba/functions/display/particle/tick.mcfunction')
  tat.write_json({"parent":"minecraft:item/generated","textures":{"layer0":"minecraft:item/potion_overlay","layer1":"minecraft:item/splash_potion"},"display":{"fixed":{"scale":[0,0,0]}},"overrides":model}, 'resourcepack/assets/minecraft/models/item/splash_potion.json')

def generate_packing_functions(source, blockstates):
  tat.delete_folder('datapack/data/baba/functions/editor/pack/block')
  tat.delete_folder('datapack/data/baba/functions/editor/unpack/block')
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
      tat.write_lines(lines, f'datapack/data/baba/functions/editor/unpack/block/{ops.id_hash(obj.name)}.mcfunction')
    for block_dir,lines in dir_checks.items():
      tat.write_lines(lines, f'datapack/data/baba/functions/editor/pack/block/{block_dir}.mcfunction')
  pack_lines.extend([
    'data modify storage baba:main tile[-1].extra set from block ~ ~ ~ Items[0].tag.extra',
    'data modify storage baba:main tile[-1].extra set from block ~ ~ ~ Bees[0].EntityData.extra',
    'execute positioned ~ ~1 ~ if block ~ ~ ~ #baba:editor_blocks run function baba:editor/pack/block'
  ])
  tat.write_lines(pack_lines, 'datapack/data/baba/functions/editor/pack/block.mcfunction')

def generate_give_commands(rsources, blockstates):
  tat.delete_folder('datapack/data/baba/functions/dev/give')
  get_all = []
  loot_tables = {}
  for data in rsources.values():
    block,state = blockstates[data.sprite]
    state_str = ','.join(map(lambda x:f'{x[0]}:"{str(x[1]).lower()}"', state.items()))
    description = data.sprite.display(data.properties, '.', '-')
    simple_name = data.sprite.display(data.properties, ' ', '=')
    cmd = f'give @s {block}{{babatile:1b,CustomModelData:{data.custom_model_data},BlockStateTag:{{{state_str}}},display:{{Name:\'{{"text":"{simple_name}","italic":false}}\'}}}}'
    get_all.append(cmd)
    tat.write_lines([cmd], f'datapack/data/baba/functions/dev/give/{description}.mcfunction')
    if block not in loot_tables:
      loot_tables[block] = (list(state.keys()), [])
    loot_tables[block][1].append({"rolls":1,"entries":[{"type":"minecraft:item","name":f"minecraft:{block}","conditions":[{"condition":"minecraft:block_state_property","block":f"minecraft:{block}","properties":state}],"functions":[{"function":"set_name","name":{"text":simple_name,"italic":False}},{"function":"set_nbt","tag":f"{{babatile:1b,CustomModelData:{data.custom_model_data}}}"}]}]})
  tat.write_lines(get_all, 'datapack/data/baba/functions/dev/all_items.mcfunction')
  for block in ['chiseled_bookshelf', 'beehive', 'bee_nest']:
    path = f'datapack/data/minecraft/loot_tables/blocks/{block}.json'
    tat.delete_file(path)
    if block in loot_tables:
      keys, table = loot_tables[block]
      tat.write_json({"type":"minecraft:block","functions":[{"function":"minecraft:copy_state","block":f"minecraft:{block}","properties":keys}],"pools":table}, path)

def generate_spawn_functions(source):
  text_prop = source.properties['text']
  sprite_prop = source.properties['sprite']
  tat.delete_folder('datapack/data/baba/functions/board/spawn')
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
        summon = ops.create_data(props, [f'text:"{spr_text}"'])
        lines.append(f'data merge entity @s {summon}')
        for (score,val) in sorted(scores, key=lambda x: x[0].name):
          lines.append(f'scoreboard players set @s {score.name} {score.convert(val)}')
        lines.append('scoreboard players operation @s text_id > @e[type=item_display,tag=baba.object,tag=is_text] text_id')
        lines.append('scoreboard players add @s text_id 1')
        lines.append('scoreboard players set @s facing 4')
        lines.append('scoreboard players set @s walk 0')
        lines.append('execute as @e[type=marker,tag=baba.conversion,scores={sprite=397973},predicate=baba:same_text] run function baba:board/spawn_convert')
        tat.write_lines(lines, f'datapack/data/baba/functions/board/spawn/text/{ops.id_hash(spr_text)}.mcfunction')
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
        summon = ops.create_data(props, [f'text:"{spr_text}"'])
        lines.append(f'data merge entity @s {summon}')
        for (score,val) in sorted(scores, key=lambda x: x[0].name):
          lines.append(f'scoreboard players set @s {score.name} {score.convert(val)}')
        lines.append('scoreboard players set @s facing 4')
        lines.append('scoreboard players set @s walk 0')
        lines.append('execute as @e[type=marker,tag=baba.conversion,scores={text=0},predicate=baba:same_sprite] run function baba:board/spawn_convert')
        tat.write_lines(lines, f'datapack/data/baba/functions/board/spawn/{obj.id}.mcfunction')

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
  tat.delete_folder('datapack/data/baba/functions/display/object')
  tat.delete_folder('datapack/data/baba/functions/display/text')
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
        textlines = [f'data modify storage baba:main model set value {rsources[spr].custom_model_data}']
        prop = props[text_prop]
        tat.write_lines(textlines, f'datapack/data/baba/functions/display/text/{text_prop.convert(prop)}.mcfunction')

    else:
      if obj.name not in linecache:
        linecache[obj.name] = []
      lines = linecache[obj.name]
      for spr,props in spritelist:
        selector = ops.create_selector(ops.filter_properties(props, lambda x: x.name!="sprite"))
        if selector == '':
          lines.append(f'data modify storage baba:main model set value {rsources[spr].custom_model_data}')
        else:
          lines.append(f'execute if entity @s[{selector}] run return run data modify storage baba:main model set value {rsources[spr].custom_model_data}')
    tat.write_lines(lines, f'datapack/data/baba/functions/display/object/{ops.id_hash(obj.name)}.mcfunction')
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
      final += f'if entity @s[{selector}] run summon item_display ~ ~ ~ {{teleport_duration:3,width:1f,height:0.1f,item_display:"fixed",item:{{id:"minecraft:potion",Count:1b,tag:{{CustomModelData:{rsources[spr].custom_model_data},CustomPotionColor:{int(spr.properties[source.properties["color"]][1:],16)}}}}},Tags:["baba.overlay"]}}'
      lines.append(final)
    if overlay.name == 'level_icon':
      lines.append('execute if entity @s[tag=complete] as @e[type=item_display,tag=baba.overlay,distance=..0.001] run data modify entity @s item.tag.CustomPotionColor set value 4676017')
    lines.append('execute as @e[type=item_display,tag=baba.overlay,distance=..0.001] run ride @s mount @e[type=item_display,tag=baba.object,distance=..0.001,limit=1]')
    tat.write_lines(lines, f'datapack/data/baba/functions/display/object/{overlay.name}.mcfunction')

if __name__ == '__main__':
  main()
