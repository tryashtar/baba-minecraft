tag @s add self
execute store result score facing baba run data get entity @s data.facing
execute as @e[type=marker,tag=baba.tile,tag=!self,distance=..0.1] store result entity @s data.facing int 1 run scoreboard players get facing baba
tag @e[type=marker,tag=baba.tile,tag=!self,tag=!move_handled,distance=..0.1] add shifting
execute if entity @s[nbt={data:{facing:1}}] as @e[type=marker,tag=baba.tile,tag=shifting] rotated 270 0 run function baba:board/movement/try_move
execute if entity @s[nbt={data:{facing:2}}] as @e[type=marker,tag=baba.tile,tag=shifting] rotated 90 0 run function baba:board/movement/try_move
execute if entity @s[nbt={data:{facing:3}}] as @e[type=marker,tag=baba.tile,tag=shifting] rotated 180 0 run function baba:board/movement/try_move
execute if entity @s[nbt={data:{facing:4}}] as @e[type=marker,tag=baba.tile,tag=shifting] rotated 0 0 run function baba:board/movement/try_move
tag @e[type=marker,tag=baba.tile,tag=shifting] add move_handled
tag @e[type=marker,tag=baba.tile,tag=shifting] remove shifting
tag @s remove self
