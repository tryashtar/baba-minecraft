data merge entity @s {data:{up:0b,down:0b,left:0b,right:0b}}
data modify storage baba:main connector set from entity @s data.sprite

scoreboard players set different baba 1
execute positioned ~1 ~ ~ as @e[type=marker,tag=baba.tile,nbt={data:{connector:1b}},distance=..0.1] run function baba:board/graphics/check_connection
execute if score different baba matches 0 run data modify entity @s data.up set value 1b
execute unless block ~1 -1 ~ glass run data modify entity @s data.up set value 1b

scoreboard players set different baba 1
execute positioned ~-1 ~ ~ as @e[type=marker,tag=baba.tile,nbt={data:{connector:1b}},distance=..0.1] run function baba:board/graphics/check_connection
execute if score different baba matches 0 run data modify entity @s data.down set value 1b
execute unless block ~-1 -1 ~ glass run data modify entity @s data.down set value 1b

scoreboard players set different baba 1
execute positioned ~ ~ ~-1 as @e[type=marker,tag=baba.tile,nbt={data:{connector:1b}},distance=..0.1] run function baba:board/graphics/check_connection
execute if score different baba matches 0 run data modify entity @s data.left set value 1b
execute unless block ~ -1 ~-1 glass run data modify entity @s data.left set value 1b

scoreboard players set different baba 1
execute positioned ~ ~ ~1 as @e[type=marker,tag=baba.tile,nbt={data:{connector:1b}},distance=..0.1] run function baba:board/graphics/check_connection
execute if score different baba matches 0 run data modify entity @s data.right set value 1b
execute unless block ~ -1 ~1 glass run data modify entity @s data.right set value 1b
