tag @s remove up
tag @s remove down
tag @s remove left
tag @s remove right
data modify storage baba:main connector set from entity @s data.sprite

scoreboard players set different baba 1
execute positioned ~1 ~ ~ as @e[type=marker,tag=baba.object,tag=connector,distance=..0.1] run function baba:board/graphics/check_connection
execute if score different baba matches 0 run tag @s add up
execute unless block ~1 ~-1 ~ black_concrete run tag @s add up
execute if entity @s[type=marker,tag=baba.object,tag=!up,nbt={data:{sprite:"line"}}] positioned ~1 ~ ~ if entity @e[type=marker,tag=baba.object,distance=..0.1,nbt={data:{sprite:"level"}},limit=1] run tag @s add up

scoreboard players set different baba 1
execute positioned ~-1 ~ ~ as @e[type=marker,tag=baba.object,tag=connector,distance=..0.1] run function baba:board/graphics/check_connection
execute if score different baba matches 0 run tag @s add down
execute unless block ~-1 ~-1 ~ black_concrete run tag @s add down
execute if entity @s[type=marker,tag=baba.object,tag=!down,nbt={data:{sprite:"line"}}] positioned ~-1 ~ ~ if entity @e[type=marker,tag=baba.object,distance=..0.1,nbt={data:{sprite:"level"}},limit=1] run tag @s add down

scoreboard players set different baba 1
execute positioned ~ ~ ~-1 as @e[type=marker,tag=baba.object,tag=connector,distance=..0.1] run function baba:board/graphics/check_connection
execute if score different baba matches 0 run tag @s add left
execute unless block ~ ~-1 ~-1 black_concrete run tag @s add left
execute if entity @s[type=marker,tag=baba.object,tag=!left,nbt={data:{sprite:"line"}}] positioned ~ ~ ~-1 if entity @e[type=marker,tag=baba.object,distance=..0.1,nbt={data:{sprite:"level"}},limit=1] run tag @s add left

scoreboard players set different baba 1
execute positioned ~ ~ ~1 as @e[type=marker,tag=baba.object,tag=connector,distance=..0.1] run function baba:board/graphics/check_connection
execute if score different baba matches 0 run tag @s add right
execute unless block ~ ~-1 ~1 black_concrete run tag @s add right
execute if entity @s[type=marker,tag=baba.object,tag=!right,nbt={data:{sprite:"line"}}] positioned ~ ~ ~1 if entity @e[type=marker,tag=baba.object,distance=..0.1,nbt={data:{sprite:"level"}},limit=1] run tag @s add right
