tag @s remove move_success
execute positioned ^ ^ ^1 as @e[type=marker,tag=baba.tile,nbt={data:{properties:["push"]}},distance=..0.1] run function baba:board/movement/try_move
