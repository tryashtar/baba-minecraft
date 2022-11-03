# this function adds the 'can_move' tag to the current object and anything it will push, if there is room to move
tag @s add can_move
execute positioned ^ ^ ^1 as @e[type=armor_stand,tag=baba.object,tag=!move_success,distance=..0.1,nbt={HandItems:[{tag:{properties:["push"]}}]},nbt=!{HandItems:[{tag:{properties:["swap"]}}]}] run function baba:board/movement/check_move
execute positioned ^ ^ ^-1 as @e[type=armor_stand,tag=baba.object,tag=!move_success,distance=..0.1,nbt={HandItems:[{tag:{properties:["pull"]}}]}] run function baba:board/movement/check_move

# if anything pushable in front of you can't move, then NOTHING in front of you can move, and you can't either
execute positioned ^ ^ ^1 if entity @e[type=armor_stand,tag=baba.object,tag=!move_success,tag=!can_move,distance=..0.1,nbt={HandItems:[{tag:{properties:["push"]}}]},nbt=!{HandItems:[{tag:{properties:["swap"]}}]},limit=1] run tag @s remove can_move

scoreboard players operation float baba = @s float_level
scoreboard players set open baba 0
execute if entity @s[nbt={HandItems:[{tag:{properties:["open"]}}]}] run scoreboard players set open baba 1
execute if entity @s[nbt={HandItems:[{tag:{properties:["shut"]}}]}] run scoreboard players set open baba 2
execute if entity @s[tag=can_move] positioned ^ ^ ^1 as @e[type=armor_stand,tag=baba.object,tag=!can_move,distance=..0.1] run function baba:board/movement/check_blocker
execute if entity @s[tag=can_move] positioned ^ ^ ^1 if entity @e[type=armor_stand,tag=baba.object,tag=blocker,distance=..0.1,limit=1] run tag @s remove can_move
tag @e[type=armor_stand,tag=baba.object,tag=blocker] remove blocker

# can't move out of bounds
execute positioned ^ ^ ^1 unless block ~ ~-1 ~ black_concrete run tag @s remove can_move

# weak objects that try to move and can't get destroyed
# objects with both 'move' and 'weak' won't willingly walk into walls, they turn around like normal
tag @s[tag=!can_move,tag=!auto_move,nbt={HandItems:[{tag:{properties:["weak"]}}]}] add destroy

execute if entity @s[tag=!can_move,tag=!destroy] run tag @e[type=armor_stand,tag=baba.object,tag=can_move] remove can_move
