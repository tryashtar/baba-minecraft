setblock ~ ~-2 ~ white_concrete
setblock ~ ~-1 ~ light_gray_concrete
fill ~ ~ ~ ~ ~10 ~ air
execute if data storage baba:main level[0][0][0] run function baba:editor/unpack/block
data remove storage baba:main level[0][0]
execute unless data storage baba:main level[0][0] if block ~ ~-2 ~1 white_concrete run setblock ~ ~-2 ~1 air
execute if data storage baba:main level[0][0] positioned ~ ~ ~1 run function baba:editor/unpack/tile
