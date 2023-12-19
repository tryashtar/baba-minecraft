# this function adds the 'can_move' tag to the current object and anything it will push, if there is room to move
tag @s add can_move

# run this recursively on pushable objects ahead and pullable objects behind
# swap property prevents pushing but not pulling
# anything that's already moved this step is ignored
execute if entity @s[tag=!prop.swap] positioned ^ ^ ^1 as @e[type=#baba:object,tag=baba.object,tag=prop.push,tag=!prop.swap,tag=!has_moved,tag=!can_move,distance=..0.1] run function baba:board/movement/check_move
execute positioned ^ ^ ^-1 as @e[type=#baba:object,tag=baba.object,tag=prop.pull,tag=!has_moved,distance=..0.1] run function baba:board/movement/check_move

# if anything pushable in front of you can't move, then you can't either
execute if entity @s[tag=!prop.swap] positioned ^ ^ ^1 if entity @e[type=#baba:object,tag=baba.object,tag=prop.push,tag=!has_moved,tag=!can_move,tag=!prop.swap,distance=..0.1,limit=1] run tag @s remove can_move

# if any object in front of you is a 'blocker', you can't move
scoreboard players operation float_level baba = @s float_level
execute if entity @s[tag=can_move,tag=!prop.swap] positioned ^ ^ ^1 as @e[type=#baba:object,tag=baba.object,tag=!can_move,tag=!has_moved,distance=..0.1] run function baba:board/movement/check_blocker
execute if entity @s[tag=can_move,tag=prop.open] positioned ^ ^ ^1 if entity @e[type=#baba:object,tag=baba.object,tag=prop.shut,distance=..0.1,limit=1] unless entity @e[type=#baba:object,tag=baba.object,tag=blocker,tag=!prop.shut,limit=1] run function baba:board/movement/open
execute if entity @s[tag=can_move,tag=prop.shut] positioned ^ ^ ^1 if entity @e[type=#baba:object,tag=baba.object,tag=prop.open,distance=..0.1,limit=1] unless entity @e[type=#baba:object,tag=baba.object,tag=blocker,tag=!prop.open,limit=1] run function baba:board/movement/open
execute if entity @s[tag=can_move,tag=!prop.swap] positioned ^ ^ ^1 if entity @e[type=#baba:object,tag=baba.object,tag=blocker,distance=..0.1,limit=1] run tag @s remove can_move
tag @e[type=#baba:object,tag=baba.object,tag=blocker] remove blocker

# can't move out of bounds
execute positioned ^ ^ ^1 unless block ~ ~-1 ~ #baba:board run tag @s remove can_move

# weak objects that try to move and can't get destroyed
# objects with both 'move' and 'weak' won't willingly walk into walls, they turn around like normal
tag @s[tag=!can_move,tag=!auto_move,tag=prop.weak] add destroy

# if you can't move, you can't push or pull
tag @s[tag=destroy] add can_move
execute if entity @s[tag=destroy] run scoreboard players add destroyed baba 1
execute if entity @s[tag=!can_move] run tag @e[type=#baba:object,tag=baba.object,tag=can_move] remove can_move
