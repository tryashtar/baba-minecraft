tag @s remove move_success
execute positioned ^ ^ ^1 as @e[type=marker,tag=baba.tile,nbt={data:{properties:["push"]}},distance=..0.1] positioned as @s run function baba:board/movement/try_move
execute if score push_success baba matches 1 run tag @s add move_success
