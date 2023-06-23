function baba:editor/load/background/floor
summon marker ~ ~ ~ {Tags:["baba.space","dirty"]}
execute if data storage baba:main level.tiles[0][0][0] run function baba:editor/load/spawn
data remove storage baba:main level.tiles[0][0]
execute unless data storage baba:main level.tiles[0][0] positioned ~ ~ ~1 run function baba:editor/load/background/wall
execute unless data storage baba:main level.tiles[0][0] run fill ~ ~-1 ~2 ~ ~-1 ~5 stone
execute if score row baba matches 1 positioned ~-1 ~ ~ run function baba:editor/load/background/wall
execute if score row baba = level_height baba positioned ~1 ~ ~ run function baba:editor/load/background/wall
execute if score row baba = level_height baba run fill ~2 ~-1 ~ ~5 ~-1 ~ stone
execute if score row baba matches 1 unless data storage baba:main level.tiles[0][0] positioned ~-1 ~ ~1 run function baba:editor/load/background/wall
execute if score row baba matches 1 unless data storage baba:main level.tiles[0][0] run fill ~-1 ~-1 ~2 ~-1 ~-1 ~5 stone
execute if score row baba = level_height baba unless data storage baba:main level.tiles[0][0] run fill ~1 ~-1 ~1 ~5 ~-1 ~5 stone
execute if score row baba = level_height baba unless data storage baba:main level.tiles[0][0] positioned ~1 ~ ~1 run function baba:editor/load/background/wall
execute if data storage baba:main level.tiles[0][0] positioned ~ ~ ~1 run function baba:editor/load/tile
