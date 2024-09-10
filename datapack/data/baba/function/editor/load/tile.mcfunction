summon marker ~ ~ ~ {Tags:["baba","baba.space","active","dirty"]}
execute if data storage baba:main level.tiles[0][0][0] run function baba:editor/load/spawn
data remove storage baba:main level.tiles[0][0]
execute if data storage baba:main level.tiles[0][0] positioned ^1 ^ ^ run function baba:editor/load/tile
