execute if data storage baba:main level[0][0] run function baba:editor/unpack/tile
data remove storage baba:main level[0]
execute unless data storage baba:main level[0] positioned ~1 ~-2 ~ if block ~ ~ ~ white_concrete run function baba:editor/unpack/wipe
execute if data storage baba:main level[0] positioned ~1 ~ ~ run function baba:editor/unpack/row
