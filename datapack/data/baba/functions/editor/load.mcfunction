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
function baba:board/rules/update
execute as @e[type=marker,tag=baba.space] at @s run function baba:board/history/record
function baba:display/update
