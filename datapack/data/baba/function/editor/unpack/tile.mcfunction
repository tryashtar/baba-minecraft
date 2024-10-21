setblock ~ ~-1 ~ white_concrete keep
fill ~ ~ ~ ~ ~10 ~ air
execute if data storage baba:main level.tiles[0][0][0] run function baba:editor/unpack/block
data remove storage baba:main level.tiles[0][0]
execute unless data storage baba:main level.tiles[0][0] if block ~ ~-1 ~1 #baba:editor_floor run setblock ~ ~-2 ~1 air
execute if data storage baba:main level.tiles[0][0] positioned ~ ~ ~1 run function baba:editor/unpack/tile
