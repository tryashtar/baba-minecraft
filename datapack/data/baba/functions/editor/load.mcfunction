# unpacks level storage into entities
kill @e[type=marker,tag=baba.space]
kill @e[type=marker,tag=baba.conversion]
kill @e[type=marker,tag=baba.rule]
kill @e[type=#baba:object,tag=baba.object]
kill @e[type=item_display,tag=baba.overlay]
kill @e[type=item_display,tag=baba.particle]
kill @e[type=text_display,tag=baba.text]
data modify storage baba:main rule_history set value []
execute store result score level_height baba run data get storage baba:main level.tiles
execute store result score level_width baba run data get storage baba:main level.tiles[0]
execute store result score level_background baba run data get storage baba:main level.metadata.background
data modify storage baba:main context.palette set from storage baba:main level.metadata.palette
execute if data storage baba:main level.tiles[0] run function baba:editor/load/row
execute store result storage baba:main context.level_height int 1 run scoreboard players get level_height baba
execute store result storage baba:main context.level_width int 1 run scoreboard players get level_width baba
function baba:editor/load/background with storage baba:main context
execute if score level_background baba matches 1 run function baba:editor/load/background/island
execute if score level_background baba matches 2 run function baba:editor/load/background/flower
summon text_display 0 1 0 {Tags:["baba.text"],Rotation:[90f,-90f],alignment:"left",background:0,transformation:{scale:[4f,4f,4f],translation:[18.9f,-1f,0f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f]}}
execute store result entity @e[type=text_display,tag=baba.text,limit=1] Pos[0] double 1 run scoreboard players get level_height baba
execute if data storage baba:main level.metadata.conversions[0] summon marker run function baba:editor/load_conversions
function baba:board/populate_palette

# process some things before the first step
execute store success score empty baba if data storage baba:main words{noun:[2925313]}
execute if data storage baba:main words{noun:[1065,10631]} run scoreboard players set empty baba 1
execute if score empty baba matches 1 at @e[type=marker,tag=baba.space] unless entity @e[type=item_display,tag=baba.object,distance=..0.1,limit=1] run summon marker ~ ~ ~ {Tags:["baba.object","not_all","empty","spawn","assign"]}
execute if score empty baba matches 1 run scoreboard players set @e[type=marker,tag=baba.object,tag=empty,tag=spawn] sprite 2925313
execute if score empty baba matches 1 as @e[type=marker,tag=baba.object,tag=empty,tag=spawn] store result score @s facing run random value 1..4
execute if score empty baba matches 1 run tag @e[type=marker,tag=baba.object,tag=empty,tag=spawn] remove spawn

execute as @e[type=item_display,tag=baba.object,tag=connector] at @s run function baba:board/graphics/connector
scoreboard players set text_id baba 0
execute as @e[type=item_display,tag=baba.object,tag=is_text] store result score @s text_id run scoreboard players add text_id baba 1
# don't trigger 'idle' conditions
scoreboard players set direction baba -1
tag @e[type=#baba:object,tag=baba.object] add assign
function baba:board/rules/update
function baba:board/rules/assign

execute as @e[type=item_display,tag=baba.object,scores={sprite=6491892},nbt={item:{tag:{level_data:{}}}}] run function baba:progress/check_completed

execute as @e[type=#baba:object,tag=baba.object,tag=prop.select] at @s run function baba:progress/show_name
function baba:board/history/record
scoreboard players set steps baba 0
scoreboard players set win baba 0

function baba:display/update
