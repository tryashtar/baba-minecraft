# unpacks level storage into entities
kill @e[type=marker,tag=baba.space]
kill @e[type=marker,tag=baba.object]
scoreboard players set level_width baba 0
scoreboard players set level_height baba 0
execute if data storage baba:main level[0] run function baba:editor/load/row

execute as @e[type=marker,tag=baba.object,tag=connector] at @s run function baba:board/graphics/connector
execute as @e[type=marker,tag=baba.space] at @s run function baba:board/history/record
function baba:display/update_text
