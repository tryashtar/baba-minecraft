setblock ~ ~ ~ air
setblock ~ ~ ~ bamboo_wall_sign[facing=west]{front_text:{messages:['""','{"text":"Play","clickEvent":{"action":"run_command","value":"/function baba:dev/board/play"}}','""','""']}}

execute positioned ~1 ~1 ~-3 store result storage baba:main context.level_height int 1 run scoreboard players get @e[type=marker,tag=baba.board,distance=..0.01,limit=1] level_height
execute positioned ~1 ~1 ~-3 store result storage baba:main context.level_width int 1 run scoreboard players get @e[type=marker,tag=baba.board,distance=..0.01,limit=1] level_width
execute positioned ~1 ~1 ~-3 run function baba:board/tag_objects with storage baba:main context
kill @e[tag=baba,tag=active]
data modify storage baba:main level set from block ~ ~ ~-3 item.components."minecraft:custom_data".baba
setblock ~ ~ ~-3 air
execute positioned ~1 ~1 ~-3 run function baba:editor/unpack
