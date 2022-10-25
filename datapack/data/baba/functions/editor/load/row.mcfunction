execute if data storage baba:main level[0][0] run function baba:editor/load/tile
data remove storage baba:main level[0]
execute unless data storage baba:main level[0] positioned ~1 ~-1 ~ if block ~ ~ ~ black_concrete run function baba:editor/load/wipe
execute if data storage baba:main level[0] positioned ~1 ~ ~ run function baba:editor/load/row
