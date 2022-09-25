tag @s remove move_success
execute positioned ^ ^ ^1 run tag @e[type=marker,tag=baba.tile,nbt={data:{properties:["push"]}},distance=..0.1] add pushing
execute positioned ^ ^ ^1 as @e[type=marker,tag=baba.tile,tag=pushing,distance=..0.1] run function baba:board/movement/try_move
execute if score push_success baba matches 1 run tag @s add move_success
execute if entity @s[tag=!move_success] positioned ^ ^ ^1 unless entity @e[type=marker,tag=baba.tile,nbt=!{data:{properties:["weak"]}},distance=..0.1,limit=1] run tag @s add move_success
tag @e[type=marker,tag=baba.tile,tag=pushing] remove pushing
