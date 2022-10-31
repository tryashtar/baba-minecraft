# unpacks level storage into entities
kill @e[type=marker,tag=baba.space]
kill @e[type=armor_stand,tag=baba.object]
execute store result score level_height baba run data get storage baba:main level
execute store result score level_width baba run data get storage baba:main level[0]
execute store result score level_background baba run data get storage baba:main level_metadata.background
execute store result score palette baba run data get storage baba:main level_metadata.palette
execute if data storage baba:main level[0] run function baba:editor/load/row

execute as @e[type=armor_stand,tag=baba.object,tag=connector] at @s run function baba:board/graphics/connector
# don't trigger idle condition when loading
scoreboard players set direction baba -1
scoreboard players set text_id baba 0
execute as @e[type=armor_stand,tag=baba.object,scores={sprite=30442}] store result score @s text_id run scoreboard players add text_id baba 1
data modify storage baba:main rules set value []
function baba:board/rules/update
execute as @e[type=marker,tag=baba.space] at @s run function baba:board/history/record

scoreboard players add @e[type=armor_stand,tag=baba.object,nbt={HandItems:[{tag:{properties:["float"]}}]}] z_layer 100
execute if score text_enabled baba matches 1 run function baba:display/text/update
execute as @e[type=armor_stand,tag=baba.object] run function baba:display/stand/update
scoreboard players remove @e[type=armor_stand,tag=baba.object,scores={z_layer=100..}] z_layer 100
