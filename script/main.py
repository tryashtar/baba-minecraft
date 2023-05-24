import os
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

def generate_packing_functions(source, blockstates):
  tat.delete_folder('datapack/data/baba/functions/editor/pack/block')
  tat.delete_folder('datapack/data/baba/functions/editor/unpack/block')
  pack_lines = ['clone ~ ~ ~ ~ ~ ~ ~ ~ ~ replace force']
  unpack_lines = ['data modify storage baba:main tile set from storage baba:main level.tiles[0][0][0]']
  dir_checks = {}
  for obj in source.objects.values():
    spritelist = list(obj.filter_sprites(lambda x: 'editor' in x.attributes).items())
    check_sprite = f'tile{{scores:{{sprite:{ops.id_hash(obj.name)}}}}}'
    lines = []
    for spr,props in spritelist:
      text_val = props.get(source.properties['text'])
      set_storage = ops.create_storage(spr.properties, None if text_val is None else f'text:"{text_val}"')
      check_rest = ops.create_storage(ops.filter_properties(props, lambda x: x.name!='sprite'))
      this_state = blockstates[spr].copy()
      state_str = ops.state_string(this_state)
      direction = this_state['facing']
      if direction not in dir_checks:
        dir_checks[direction] = []
        pack_lines.append(f'execute if block ~ ~ ~ chiseled_bookshelf[facing={direction}] run function baba:editor/pack/block/{direction}')
      del this_state['facing']
      dir_checks[direction].append(f'execute if block ~ ~ ~ chiseled_bookshelf[{ops.state_string(this_state)}] run data modify storage baba:main tile append value {{{set_storage}}}')
      if len(spritelist) == 1:
        unpack_lines.append(f'execute if data storage baba:main {check_sprite} run setblock ~ ~ ~ chiseled_bookshelf[{ops.state_string(blockstates[spritelist[0][0]])}]')
      else:
        lines.append(f'execute if data storage baba:main tile{{{check_rest}}} run setblock ~ ~ ~ chiseled_bookshelf[{state_str}]',)
        unpack_lines.append(f'execute if data storage baba:main {check_sprite} run function baba:editor/unpack/block/{obj.name}')
    if len(lines) > 0:
      tat.write_lines(lines, f'datapack/data/baba/functions/editor/unpack/block/{obj.name}.mcfunction')
    for dir,lines in dir_checks.items():
      tat.write_lines(lines, f'datapack/data/baba/functions/editor/pack/block/{dir}.mcfunction')
  pack_lines.extend([
    'data modify storage baba:main tile[-1].extra set from block ~ ~ ~ Items[0].tag.extra',
    'execute positioned ~ ~1 ~ if block ~ ~ ~ chiseled_bookshelf run function baba:editor/pack/block'
  ])
  unpack_lines.extend([
    'execute if data storage baba:main tile.extra run data modify block ~ ~ ~ Items set value [{id:"book",Count:1b}]',
    'execute if data storage baba:main tile.extra run data modify block ~ ~ ~ Items[0].tag.extra set from storage baba:main tile.extra',
    'data remove storage baba:main level.tiles[0][0][0]',
    'execute if data storage baba:main level.tiles[0][0][0] positioned ~ ~1 ~ run function baba:editor/unpack/block',
  ])
  tat.write_lines(pack_lines, 'datapack/data/baba/functions/editor/pack/block.mcfunction')
  tat.write_lines(unpack_lines, 'datapack/data/baba/functions/editor/unpack/block.mcfunction')

def generate_give_commands(resources, blockstates):
  tat.delete_folder('datapack/data/baba/functions/dev/give')
  get_all = []
  loot_table = []
  for data in resources.values():
    state = blockstates[data.sprite]
    state_str = ','.join(map(lambda x:f'{x[0]}:"{str(x[1]).lower()}"', state.items()))
    description = data.sprite.display(data.properties, '.', '-')
    simple_name = data.sprite.display(data.properties, ' ', '=')
    cmd = f'give @s chiseled_bookshelf{{babatile:1b,CustomModelData:{data.custom_model_data},BlockStateTag:{{{state_str}}},display:{{Name:\'{{"text":"{simple_name}","italic":false}}\'}}}}'
    get_all.append(cmd)
    tat.write_lines([cmd], f'datapack/data/baba/functions/dev/give/{description}.mcfunction')
    loot_table.append({"rolls":1,"entries":[{"type":"minecraft:item","name":"minecraft:chiseled_bookshelf","conditions":[{"condition":"minecraft:block_state_property","block":"minecraft:chiseled_bookshelf","properties":state}],"functions":[{"function":"set_name","name":{"text":simple_name,"italic":False}},{"function":"set_nbt","tag":f"{{babatile:1b,CustomModelData:{data.custom_model_data}}}"}]}]})
  tat.write_lines(get_all, 'datapack/data/baba/functions/dev/all_items.mcfunction')
  tat.write_json({"type":"minecraft:block","functions":[{"function":"minecraft:copy_state","block":"minecraft:chiseled_bookshelf","properties":["facing","slot_0_occupied","slot_1_occupied","slot_2_occupied","slot_3_occupied","slot_4_occupied","slot_5_occupied"]}],"pools":loot_table}, f'datapack/data/minecraft/loot_tables/blocks/chiseled_bookshelf.json')

def generate_spawn_functions(source):
  spawn = []
  spawntext = []
  objectlist = source.objects.values()
  for obj in objectlist:
    if obj.name == 'text':
      spawn.insert(0, f'execute if score spawn baba matches {obj.id} run function baba:board/spawn_text')
      for spr in obj.sprites:
        spr_text = spr.properties[source.properties['text']]
        props = ops.filter_properties(spr.properties, lambda x: 'spawn' in x.attributes and x.name not in ('text','sprite'))
        summon = ops.create_summon(props, [f'text:"{spr_text}"'])
        spawntext.append(f'execute if score spawn_text baba matches {ops.id_hash(spr_text)} run {summon}')
    else:
      props = next(iter(obj.filter_sprites(lambda x: 'spawn' in x.attributes).values()))
      del props[source.properties['sprite']]
      spawn.append(f'execute if score spawn baba matches {obj.id} run {ops.create_summon(props)}')
  newspawn = '@e[type=item_display,tag=spawn,distance=..0.1,limit=1]'
  spawn.append(f'scoreboard players operation {newspawn} sprite = spawn baba')
  spawntext.append(f'scoreboard players operation {newspawn} text = spawn_text baba')
  spawntext.append(f'scoreboard players operation {newspawn} text_id > @e[type=item_display,tag=baba.object,scores={{sprite=30442}}] text_id')
  spawntext.append(f'scoreboard players add {newspawn} text_id 1')
  for prop in source.properties.values():
    if 'spawn' in prop.attributes and prop.kind == 'score' and prop.name not in ('sprite','text'):
      spawn.append(f'execute as {newspawn} store result score @s {prop.name} run data get entity @s item.tag.scores.{prop.name}')
    if 'all' in prop.attributes and 'spawn' not in prop.attributes:
      if prop.kind == 'score':
        spawn.append(f'scoreboard players set {newspawn} {prop.name} {prop.convert(prop.default)}')
      else:
        raise ValueError(prop.name)
  spawn.append(f'data remove entity {newspawn} item.tag.scores')
  tat.write_lines(spawn, 'datapack/data/baba/functions/board/spawn.mcfunction')
  tat.write_lines(spawntext, 'datapack/data/baba/functions/board/spawn_text.mcfunction')

def generate_reference_ids(source):
  text_map = []
  for spr in source.objects['text'].sprites:
    text = spr.properties[source.properties['text']]
    text_map.append(f'{text}: {ops.id_hash(text)}')
  tat.write_lines(text_map, 'text_ids.txt')

def generate_wiggle_fonts(source, resources):
  for spr in source.objects['text'].sprites:
    text = spr.properties[source.properties['text']]
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
    'execute at @s run tp @s ~ ~1.001 ~'
  ]
  # yes, the "execute if entity" is faster
  for obj in source.objects.values():
    spritelist = list(obj.filter_sprites(lambda x: 'sprite' in x.attributes).items())
    if len(spritelist) == 1:
      spr,props = spritelist[0]
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
    'execute if entity @s[tag=prop.hide] run data modify entity @s item.tag.CustomModelData set value 0',
    'scoreboard players operation color baba = @s color',
    'execute if entity @s[scores={sprite=30442,text_used=0}] run function baba:display/inactive_text',
    f'execute if entity @s[tag=prop.red] run scoreboard players set color baba {int("e5533b",16)}',
    f'execute if entity @s[tag=prop.blue] run scoreboard players set color baba {int("557ae0",16)}',
  ])
  tat.delete_folder('datapack/data/baba/functions/display/palette')
  for pid,(pname,palette) in enumerate(source.palettes.items()):
    if pid == 0:
      continue
    update_obj.append(f'execute if score palette baba matches {pid} run function baba:display/palette/{pname}')
    function = []
    for color1,color2 in palette.items():
      if color1!=color2:
        function.append(f'execute if score color baba matches {int(color1[1:],16)} run scoreboard players set color baba {int(color2[1:],16)}')
    tat.write_lines(function, f'datapack/data/baba/functions/display/palette/{pname}.mcfunction')
  update_obj.append('execute store result entity @s item.tag.CustomPotionColor int 1 run scoreboard players get color baba')
  tat.write_lines(update_obj, 'datapack/data/baba/functions/display/object.mcfunction')


if __name__ == '__main__':
  main()
