# unpacks level storage into entities
kill @e[type=marker,tag=baba.space]
kill @e[type=item_display,tag=baba.object]
execute store result score level_height baba if data storage baba:main level[]
execute store result score level_width baba if data storage baba:main level[0][]
execute store result score level_background baba run data get storage baba:main level_metadata.background
execute store result score palette baba run data get storage baba:main level_metadata.palette
scoreboard players set row baba 0
execute if data storage baba:main level[0] run function baba:editor/load/row
execute if score level_background baba matches 1 run function baba:editor/load/background/island
execute if score level_background baba matches 2 run function baba:editor/load/background/flower

# get all the objects that 'all' should represent, in a form ready for embedding for 'is' and 'write'
data modify storage baba:main all_list set value []
function baba:board/find_all
data modify storage baba:main all_write_list set from storage baba:main all_list
data modify storage baba:main all_write_list[].write set value 1b
tag @e[type=item_display,tag=baba.object,tag=found] remove found
tag @e[type=item_display,tag=baba.object,tag=found_text] remove found_text

# process some things before the first step
execute as @e[type=item_display,tag=baba.object,tag=connector] at @s run function baba:board/graphics/connector
scoreboard players set text_id baba 0
execute as @e[type=item_display,tag=baba.object,scores={sprite=30442}] store result score @s text_id run scoreboard players add text_id baba 1
# don't trigger 'idle' conditions
scoreboard players set direction baba -1
data modify storage baba:main rules set value []
function baba:board/rules/update
function baba:board/rules/assign
execute as @e[type=marker,tag=baba.space] at @s run function baba:board/history/record

scoreboard players add @e[type=item_display,tag=baba.object,scores={float_level=1..}] z_layer 100
function baba:display/stand/update
scoreboard players remove @e[type=item_display,tag=baba.object,scores={z_layer=100..}] z_layer 100
