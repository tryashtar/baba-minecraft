scoreboard players add row baba 1
execute positioned ~ ~ ~-1 run function baba:editor/load/background/wall
execute if score row baba matches 1 positioned ~-1 ~ ~-1 run function baba:editor/load/background/wall
execute if score row baba = level_height baba positioned ~1 ~ ~-1 run function baba:editor/load/background/wall
execute if data storage baba:main level.tiles[0][0] run function baba:editor/load/tile
data remove storage baba:main level.tiles[0]
execute if data storage baba:main level.tiles[0] positioned ~1 ~ ~ run function baba:editor/load/row
