execute if score level_height baba matches 1 run scoreboard players add level_width baba 1
setblock ~ ~-1 ~ black_concrete
summon marker ~ ~ ~ {Tags:["baba.space"]}
execute if data storage baba:main level[0][0][0] run function baba:editor/load/spawn
data remove storage baba:main level[0][0]
execute unless data storage baba:main level[0][0] if block ~ ~-1 ~1 black_concrete run setblock ~ ~-1 ~1 stone
execute if data storage baba:main level[0][0] positioned ~ ~ ~1 run function baba:editor/load/tile
