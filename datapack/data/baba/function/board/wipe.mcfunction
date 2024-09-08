execute store result storage baba:main context.level_height int 1 run scoreboard players get @s level_height
execute store result storage baba:main context.level_width int 1 run scoreboard players get @s level_width
function baba:board/tag_objects with storage baba:main context
kill @e[tag=baba,tag=active]
