# this function adds the 'can_move' tag to the current object and anything it will push, if there is room to move
tag @s add can_move
execute positioned ^ ^ ^1 as @e[type=marker,tag=baba.object,distance=..0.1,nbt={data:{properties:["push"]}}] run function baba:board/movement/check_move

# if anything pushable in front of you can't move, then NOTHING in front of you can move, and you can't either
execute positioned ^ ^ ^1 if entity @e[type=marker,tag=baba.object,tag=!can_move,distance=..0.1,nbt={data:{properties:["push"]}},limit=1] run tag @s remove can_move
execute positioned ^ ^ ^1 if entity @e[type=marker,tag=baba.object,tag=!can_move,distance=..0.1,nbt={data:{properties:["push"]}},limit=1] run tag @e[type=marker,tag=baba.object,tag=can_move,distance=..0.1,nbt={data:{properties:["push"]}}] remove can_move

# anything can move onto a weak object, even if stop
# open objects can move onto shut objects, even if stop, and vice versa
execute if entity @s[tag=can_move,nbt={data:{properties:["shut"]}}] positioned ^ ^ ^1 if entity @e[type=marker,tag=baba.object,distance=..0.1,nbt={data:{properties:["stop"]}},nbt=!{data:{properties:["push"]}},nbt=!{data:{properties:["weak"]}},nbt=!{data:{properties:["open"]}},limit=1] run tag @s remove can_move
execute if entity @s[tag=can_move,nbt={data:{properties:["shut"]}}] positioned ^ ^ ^1 if entity @e[type=marker,tag=baba.object,distance=..0.1,nbt={data:{properties:["pull"]}},nbt=!{data:{properties:["push"]}},nbt=!{data:{properties:["weak"]}},nbt=!{data:{properties:["open"]}},limit=1] run tag @s remove can_move
execute if entity @s[tag=can_move,nbt={data:{properties:["open"]}}] positioned ^ ^ ^1 if entity @e[type=marker,tag=baba.object,distance=..0.1,nbt={data:{properties:["stop"]}},nbt=!{data:{properties:["push"]}},nbt=!{data:{properties:["weak"]}},nbt=!{data:{properties:["shut"]}},limit=1] run tag @s remove can_move
execute if entity @s[tag=can_move,nbt={data:{properties:["open"]}}] positioned ^ ^ ^1 if entity @e[type=marker,tag=baba.object,distance=..0.1,nbt={data:{properties:["pull"]}},nbt=!{data:{properties:["push"]}},nbt=!{data:{properties:["weak"]}},nbt=!{data:{properties:["shut"]}},limit=1] run tag @s remove can_move
execute if entity @s[tag=can_move,nbt=!{data:{properties:["shut"]}},nbt=!{data:{properties:["open"]}}] positioned ^ ^ ^1 if entity @e[type=marker,tag=baba.object,distance=..0.1,nbt={data:{properties:["stop"]}},nbt=!{data:{properties:["push"]}},nbt=!{data:{properties:["weak"]}},limit=1] run tag @s remove can_move
execute if entity @s[tag=can_move,nbt=!{data:{properties:["shut"]}},nbt=!{data:{properties:["open"]}}] positioned ^ ^ ^1 if entity @e[type=marker,tag=baba.object,distance=..0.1,nbt={data:{properties:["pull"]}},nbt=!{data:{properties:["push"]}},nbt=!{data:{properties:["weak"]}},limit=1] run tag @s remove can_move

# can't move out of bounds
execute positioned ^ ^ ^1 unless block ~ ~-1 ~ white_concrete run tag @s remove can_move

# weak objects that try to move and can't get destroyed
# objects with both 'move' and 'weak' won't willingly walk into walls, they turn around like normal
tag @s[tag=!can_move,tag=!auto_move,nbt={data:{properties:["weak"]}}] add destroy
