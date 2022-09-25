tag @s add move_success
scoreboard players set push_success baba 0
execute positioned ^ ^ ^1 if entity @e[type=marker,tag=baba.tile,tag=!move_success,nbt={data:{properties:["push"]}},distance=..0.1] positioned ^ ^ ^-1 run function baba:board/movement/try_push
execute positioned ^ ^ ^1 if entity @e[type=marker,tag=baba.tile,nbt={data:{properties:["stop"]}},nbt=!{data:{properties:["weak"]}},distance=..0.1] run tag @s remove move_success
execute positioned ^ ^ ^1 unless block ~ -1 ~ glass run tag @s remove move_success
tag @s[tag=!auto_move,nbt={data:{properties:["weak"]}}] add move_success
execute if entity @s[tag=move_success] run function baba:board/movement/do_move
