tag @s add self
execute store result score facing baba run data get entity @s data.facing
execute if entity @s[nbt={data:{facing:1}}] as @e[type=marker,tag=baba.tile,tag=!self,tag=!move_success,distance=..0.1] rotated 270 0 run function baba:board/movement/try_move
execute if entity @s[nbt={data:{facing:2}}] as @e[type=marker,tag=baba.tile,tag=!self,tag=!move_success,distance=..0.1] rotated 90 0 run function baba:board/movement/try_move
execute if entity @s[nbt={data:{facing:3}}] as @e[type=marker,tag=baba.tile,tag=!self,tag=!move_success,distance=..0.1] rotated 180 0 run function baba:board/movement/try_move
execute if entity @s[nbt={data:{facing:4}}] as @e[type=marker,tag=baba.tile,tag=!self,tag=!move_success,distance=..0.1] rotated 0 0 run function baba:board/movement/try_move
tag @s remove self
