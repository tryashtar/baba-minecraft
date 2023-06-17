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
  background.generate(source.palettes, ['island', 'flower'], 'datapack', 'resourcepack', 'baba')
  generate_reference_ids(source)
  generate_wiggle_fonts(source, sprite_resources)
  generate_spawn_functions(source)
  generate_update_function(source, sprite_resources)
  generate_give_commands(editor_resources, blockstates)
  generate_packing_functions(source, blockstates)
  generate_particles(sprite_data['particles'])
  generate_make_palette(source)

def generate_make_palette(source):
  fn = [
    'data modify storage baba:main all_list set value []',
    'data modify storage baba:main words set value {noun:[],property:[],verb:[],infix:[],prefix:[],and:[],not:[]}'
  ]
  for obj in source.objects.values():
    if obj.name not in ('text', 'level'):
      fn.append(f'execute if entity @e[type=item_display,tag=baba.object,scores={{sprite={obj.id}}},limit=1] run data modify storage baba:main all_list append value {{sprite:{obj.id},inverted:0b}}')
      fn.append(f'execute if entity @e[type=item_display,tag=baba.object,scores={{text={obj.id}}},limit=1] unless data storage baba:main all_list[{{sprite:{obj.id}}}] run data modify storage baba:main all_list append value {{sprite:{obj.id},inverted:0b}}')
  text_prop = source.properties['text']
  part_prop = source.properties['part']
  for spr in source.objects['text'].filter_sprites(lambda x: x == text_prop):
    if text_prop in spr.properties and part_prop in spr.properties:
      text = spr.properties[text_prop]
      part = spr.properties[part_prop]
      id = ops.id_hash(text)
      if part == 'noun' and text in source.objects:
        fn.append(f'execute if entity @e[type=item_display,tag=baba.object,scores={{sprite={id}}},limit=1] run data modify storage baba:main words.{part} append value {id}')
        fn.append(f'execute if entity @e[type=item_display,tag=baba.object,scores={{text={id}}},limit=1] unless data storage baba:main words{{{part}:[{id}]}} run data modify storage baba:main words.{part} append value {id}')
      else:
        fn.append(f'execute if entity @e[type=item_display,tag=baba.object,scores={{text={id}}},limit=1] run data modify storage baba:main words.{part} append value {id}')
  fn.append('data modify storage baba:main all_write_list set from storage baba:main all_list')
  fn.append('data modify storage baba:main all_write_list[].write set value 1b')
  tat.write_lines(fn, 'datapack/data/baba/functions/board/populate_palette.mcfunction')

def generate_particles(particles):
  cmd = 1
  model = []
  tat.delete_folder('datapack/data/baba/functions/display/particle/init')
  tat.delete_folder('datapack/data/baba/functions/display/particle/tick')
  tat.delete_folder(f'resourcepack/assets/baba/models/particles')
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
          'execute if score palette baba matches 1.. run function baba:display/palette',
          'execute store result entity @s item.tag.CustomPotionColor int 1 run scoreboard players get color baba'
        ])
    init_lines.extend([
      'execute summon marker run function baba:display/particle/random',
      f'data modify storage baba:main merge set value {{start_interpolation:0,interpolation_duration:{life},transformation:{{translation:[0f,0f,0f]}}}}',
      f'execute store result storage baba:main merge.transformation.translation[0] float {speed/2147483647:.20f} run data get storage baba:main random[0]',
      f'execute store result storage baba:main merge.transformation.translation[2] float {speed/2147483647:.20f} run data get storage baba:main random[1]',
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
  unpack_lines = ['data modify storage baba:main tile set from storage baba:main level.tiles[0][0][0]']
  dir_checks = {}
  for obj in source.objects.values():
    spritelist = list(obj.filter_sprites(lambda x: 'editor' in x.attributes).items())
    check_sprite = f'tile{{scores:{{sprite:{ops.id_hash(obj.name)}}}}}'
    lines = []
    for spr,props in spritelist:
      text_val = props.get(source.properties['text'])
      letter_val = props.get(source.properties['letter'])
      extra_data = None
      if text_val is not None:
        extra_data = f'text:"{text_val}"'
      if letter_val is not None:
        extra_data = f'text:"{letter_val}"'
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
      dir_checks[direction].append(f'execute if block ~ ~ ~ {block}[{ops.state_string(this_state)}] run data modify storage baba:main tile append value {{{set_storage}}}')
      if len(spritelist) == 1:
        b,s = blockstates[spritelist[0][0]]
        unpack_lines.append(f'execute if data storage baba:main {check_sprite} run setblock ~ ~ ~ {b}[{ops.state_string(s)}]')
      else:
        lines.append(f'execute if data storage baba:main tile{{{check_rest}}} run setblock ~ ~ ~ {block}[{state_str}]',)
        unpack_line = f'execute if data storage baba:main {check_sprite} run function baba:editor/unpack/block/{obj.name}'
        if unpack_line not in unpack_lines:
          unpack_lines.append(unpack_line)
    if len(lines) > 0:
      tat.write_lines(lines, f'datapack/data/baba/functions/editor/unpack/block/{obj.name}.mcfunction')
    for dir,lines in dir_checks.items():
      tat.write_lines(lines, f'datapack/data/baba/functions/editor/pack/block/{dir}.mcfunction')
  pack_lines.extend([
    'data modify storage baba:main tile[-1].extra set from block ~ ~ ~ Items[0].tag.extra',
    'data modify storage baba:main tile[-1].extra set from block ~ ~ ~ Bees[0].EntityData.extra',
    'execute positioned ~ ~1 ~ if block ~ ~ ~ #baba:editor_blocks run function baba:editor/pack/block'
  ])
  unpack_lines.extend([
    'execute if data storage baba:main tile.extra run data modify block ~ ~ ~ Items set value [{id:"book",Count:1b}]',
    'execute if data storage baba:main tile.extra run data modify block ~ ~ ~ Bees set value [{EntityData:{}}]',
    'execute if data storage baba:main tile.extra run data modify block ~ ~ ~ Items[0].tag.extra set from storage baba:main tile.extra',
    'execute if data storage baba:main tile.extra run data modify block ~ ~ ~ Bees[0].EntityData.extra set from storage baba:main tile.extra',
    'data remove storage baba:main level.tiles[0][0][0]',
    'execute if data storage baba:main level.tiles[0][0][0] positioned ~ ~1 ~ run function baba:editor/unpack/block',
  ])
  tat.write_lines(pack_lines, 'datapack/data/baba/functions/editor/pack/block.mcfunction')
  tat.write_lines(unpack_lines, 'datapack/data/baba/functions/editor/unpack/block.mcfunction')

def generate_give_commands(resources, blockstates):
  tat.delete_folder('datapack/data/baba/functions/dev/give')
  get_all = []
  loot_tables = {}
  for data in resources.values():
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
  spawn = []
  spawntext = []
  objectlist = source.objects.values()
  for obj in objectlist:
    if obj.name == 'text':
      spawn.insert(0, f'execute if score spawn baba matches {obj.id} run function baba:board/spawn_text')
      for spr in obj.sprites:
        if text_prop not in spr.properties:
          continue
        spr_text = spr.properties[text_prop]
        props = ops.filter_properties(spr.properties, lambda x: 'spawn' in x.attributes and x.name not in ('text','sprite'))
        summon = ops.create_summon(props, [f'text:"{spr_text}"'])
        conditions = f'if score spawn_text baba matches {ops.id_hash(spr_text)}'
        spawntext.append(f'execute {conditions} run {summon}')
    else:
      vars = obj.filter_sprites(lambda x: 'spawn' in x.attributes)
      for spr,props in vars.items():
        if sprite_prop in props:
          del props[sprite_prop]
        conditions = f'if score spawn baba matches {obj.id}'
        spawn.append(f'execute {conditions} run {ops.create_summon(props)}')
  newspawn = '@e[type=item_display,tag=baba.object,tag=spawn,distance=..0.1,limit=1]'
  spawn.append(f'scoreboard players operation {newspawn} sprite = spawn baba')
  spawntext.append(f'scoreboard players operation {newspawn} text = spawn_text baba')
  spawntext.append(f'scoreboard players operation {newspawn} text_id > @e[type=item_display,tag=baba.object,scores={{sprite=397973}}] text_id')
  spawntext.append(f'scoreboard players add {newspawn} text_id 1')
  for prop in source.properties.values():
    if 'spawn' in prop.attributes and prop.kind == 'score' and prop.name not in ('sprite','text'):
      spawn.append(f'execute as {newspawn} store result score @s {prop.name} run data get entity @s item.tag.scores.{prop.name}')
    if 'all' in prop.attributes and 'spawn' not in prop.attributes:
      if prop.kind == 'score':
        spawn.append(f'scoreboard players set {newspawn} {prop.name} {prop.convert(prop.default)}')
      else:
        raise ValueError(prop.name)
  spawn.extend([
    f'data remove entity {newspawn} item.tag.scores',
    'execute unless score spawn baba matches 397973 as @e[type=marker,tag=baba.conversion,scores={text=0}] if score @s sprite = spawn baba run function baba:board/spawn_convert',
    'execute if score spawn baba matches 397973 as @e[type=marker,tag=baba.conversion,scores={sprite=397973}] if score @s text = spawn_text baba run function baba:board/spawn_convert',
  ])
  tat.write_lines(spawn, 'datapack/data/baba/functions/board/spawn.mcfunction')
  tat.write_lines(spawntext, 'datapack/data/baba/functions/board/spawn_text.mcfunction')

def generate_reference_ids(source):
  text_map = []
  text_prop = source.properties['text']
  for spr in source.objects['text'].filter_sprites(lambda x: x == text_prop):
    if text_prop in spr.properties:
      text = spr.properties[text_prop]
      text_map.append(f'{text}: {ops.id_hash(text)}')
  tat.write_lines(text_map, 'text_ids.txt')

def generate_wiggle_fonts(source, resources):
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
        path = resources[spr].texture_resource + '.png'
        providers.append({"type":"bitmap","file":path,"height":12,"ascent":8,"chars":chars})
      tat.write_json({"providers":providers}, f'resourcepack/assets/baba/font/icon_{text}.json')

def generate_update_function(source, resources):
  tat.delete_folder('datapack/data/baba/functions/display/object')
  update_obj = [
    'execute store result entity @s Pos[1] double 0.0001 run scoreboard players get @s z_layer',
    'execute at @s run tp @s ~ ~1.001 ~',
    'scoreboard players operation sprite baba = @s sprite',
    'execute unless score @s appearance matches 0 run scoreboard players operation @s sprite = @s appearance',
  ]
  for obj in list(source.objects.values()) + list(source.alt_images.values()):
    spritelist = list(obj.filter_sprites(lambda x: 'sprite' in x.attributes).items())
    if len(spritelist) == 1:
      spr,props = spritelist[0]
      # yes, the "execute if entity" is faster
      update_obj.append(f'execute if entity @s[{ops.create_selector(props)}] run data modify entity @s item.tag.CustomModelData set value {resources[spr].custom_model_data}')
    else:
      lines = []
      for spr,props in spritelist:
        lines.append(f'execute if entity @s[{ops.create_selector(ops.filter_properties(props, lambda x: x.name!="sprite"))}] run data modify entity @s item.tag.CustomModelData set value {resources[spr].custom_model_data}')
      tat.write_lines(lines, f'datapack/data/baba/functions/display/object/{obj.name}.mcfunction')
      update_obj.append(f'execute if entity @s[scores={{sprite={ops.id_hash(obj.name)}}}] run function baba:display/object/{obj.name}')
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
      final += f'if entity @s[{selector}] run summon item_display ~ ~ ~ {{width:1f,height:0.1f,item_display:"fixed",item:{{id:"minecraft:potion",Count:1b,tag:{{CustomModelData:{resources[spr].custom_model_data},CustomPotionColor:{int(spr.properties[source.properties["color"]][1:],16)}}}}},Tags:["baba.overlay"]}}'
      lines.append(final)
    if overlay.name == 'level_icon':
      lines.append('execute if entity @s[tag=complete] as @e[type=item_display,tag=baba.overlay,distance=..0.001] run data modify entity @s item.tag.CustomPotionColor set value 4676017')
    lines.append('execute as @e[type=item_display,tag=baba.overlay,distance=..0.001] run ride @s mount @e[type=item_display,tag=baba.object,distance=..0.001,limit=1]')
    tat.write_lines(lines, f'datapack/data/baba/functions/display/object/{overlay.name}.mcfunction')
  for obj in source.objects.values():
    for overlay in obj.overlays:
      update_obj.append(f'execute at @s[scores={{sprite={ops.id_hash(obj.name)}}},tag=!prop.hide] run function baba:display/object/{overlay}')
  update_obj.extend([
    'scoreboard players operation @s sprite = sprite baba',
    'execute if entity @s[tag=prop.hide] run data modify entity @s item.tag.CustomModelData set value 0',
    'scoreboard players operation color baba = @s color',
    'execute if entity @s[scores={sprite=397973,text_used=0}] run scoreboard players operation color baba = @s inactive_color',
    f'execute if entity @s[tag=prop.red] run scoreboard players set color baba {int("e5533b",16)}',
    f'execute if entity @s[tag=prop.blue] run scoreboard players set color baba {int("557ae0",16)}',
    'execute if score palette baba matches 1.. run function baba:display/palette'
  ])
  tat.delete_folder('datapack/data/baba/functions/display/palette')
  pal_fn = []
  for pid,(pname,palette) in enumerate(source.palettes.items()):
    if pid == 0:
      continue
    pal_fn.append(f'execute if score palette baba matches {pid} run function baba:display/palette/{pname}')
    function = []
    conflict = False
    for color1,color2 in palette.items():
      if color1!=color2:
        set_col = int(color2[1:],16)
        if color2 in palette and palette[color2] != color2:
          set_col *= -1
          conflict = True
        function.append(f'execute if score color baba matches {int(color1[1:],16)} run scoreboard players set color baba {set_col}')
    if conflict:
      function.append(f'execute if score color baba matches ..-1 run scoreboard players operation color baba *= #-1 baba')
    tat.write_lines(function, f'datapack/data/baba/functions/display/palette/{pname}.mcfunction')
  update_obj.append('execute store result entity @s item.tag.CustomPotionColor int 1 run scoreboard players get color baba')
  tat.write_lines(update_obj, 'datapack/data/baba/functions/display/object.mcfunction')
  tat.write_lines(pal_fn, 'datapack/data/baba/functions/display/palette.mcfunction')


if __name__ == '__main__':
  main()
