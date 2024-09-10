execute positioned ~1 ~1 ~-1 align y as @e[type=marker,tag=baba.board,distance=..0.01,limit=1] run function baba:board/wipe
data modify storage baba:main level set from block ~ ~ ~-1 item.components."minecraft:custom_data".baba.level
scoreboard players set no_wall baba 1
execute positioned ~1 ~1 ~-1 align y rotated 90 -90 run function baba:editor/load
scoreboard players set no_wall baba 0
execute positioned ~1 ~1 ~-1 align y run data modify entity @e[type=marker,tag=baba.board,distance=..0.01,limit=1] data.moves set from block ~-1 ~-1 ~ item.components."minecraft:custom_data".baba.moves
schedule function baba:dev/tests/automate_step_schedule 1t
