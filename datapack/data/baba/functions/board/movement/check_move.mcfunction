tag @s add can_move
execute positioned ^ ^ ^1 as @e[type=marker,tag=baba.object,nbt={data:{properties:["push"]}},distance=..0.1] run function baba:board/movement/check_move
execute positioned ^ ^ ^1 if entity @e[type=marker,tag=baba.object,tag=!can_move,nbt={data:{properties:["push"]}},distance=..0.1,limit=1] run tag @s remove can_move
execute positioned ^ ^ ^1 if entity @e[type=marker,tag=baba.object,tag=!can_move,nbt={data:{properties:["push"]}},distance=..0.1,limit=1] run tag @e[type=marker,tag=baba.object,tag=can_move,nbt={data:{properties:["push"]}},distance=..0.1] remove can_move

execute if entity @s[tag=can_move,nbt={data:{properties:["shut"]}}] positioned ^ ^ ^1 if entity @e[type=marker,tag=baba.object,nbt={data:{properties:["stop"]}},nbt=!{data:{properties:["push"]}},nbt=!{data:{properties:["weak"]}},nbt=!{data:{properties:["open"]}},distance=..0.1,limit=1] run tag @s remove can_move
execute if entity @s[tag=can_move,nbt={data:{properties:["shut"]}}] positioned ^ ^ ^1 if entity @e[type=marker,tag=baba.object,nbt={data:{properties:["pull"]}},nbt=!{data:{properties:["push"]}},nbt=!{data:{properties:["weak"]}},nbt=!{data:{properties:["open"]}},distance=..0.1,limit=1] run tag @s remove can_move
execute if entity @s[tag=can_move,nbt={data:{properties:["open"]}}] positioned ^ ^ ^1 if entity @e[type=marker,tag=baba.object,nbt={data:{properties:["stop"]}},nbt=!{data:{properties:["push"]}},nbt=!{data:{properties:["weak"]}},nbt=!{data:{properties:["shut"]}},distance=..0.1,limit=1] run tag @s remove can_move
execute if entity @s[tag=can_move,nbt={data:{properties:["open"]}}] positioned ^ ^ ^1 if entity @e[type=marker,tag=baba.object,nbt={data:{properties:["pull"]}},nbt=!{data:{properties:["push"]}},nbt=!{data:{properties:["weak"]}},nbt=!{data:{properties:["shut"]}},distance=..0.1,limit=1] run tag @s remove can_move
execute if entity @s[tag=can_move,nbt=!{data:{properties:["shut"]}},nbt=!{data:{properties:["open"]}}] positioned ^ ^ ^1 if entity @e[type=marker,tag=baba.object,nbt={data:{properties:["stop"]}},nbt=!{data:{properties:["push"]}},nbt=!{data:{properties:["weak"]}},distance=..0.1,limit=1] run tag @s remove can_move
execute if entity @s[tag=can_move,nbt=!{data:{properties:["shut"]}},nbt=!{data:{properties:["open"]}}] positioned ^ ^ ^1 if entity @e[type=marker,tag=baba.object,nbt={data:{properties:["pull"]}},nbt=!{data:{properties:["push"]}},nbt=!{data:{properties:["weak"]}},distance=..0.1,limit=1] run tag @s remove can_move

execute positioned ^ ^ ^1 unless block ~ -1 ~ glass run tag @s remove can_move
tag @s[tag=!can_move,tag=!auto_move,nbt={data:{properties:["weak"]}}] add can_move
