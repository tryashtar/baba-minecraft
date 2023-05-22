tag @s add dirty
execute at @s run tag @e[type=marker,tag=baba.space,tag=!dirty,distance=..0.1,limit=1] add dirty
tag @e[type=marker,tag=baba.space,tag=!dirty,distance=..0.1,limit=1] add dirty
tag @s add moving
# things without 'swap' trade places with things with 'swap' and vice versa
execute if entity @s[tag=!teleported,tag=!swap,tag=!falling] run tag @e[type=item_display,tag=baba.object,tag=prop.swap,distance=..0.1] add swap
execute if entity @s[tag=!teleported,tag=!swap,tag=!falling,tag=prop.swap] run tag @e[type=item_display,tag=baba.object,tag=!prop.swap,distance=..0.1] add swap
execute at @s as @e[type=item_display,tag=baba.object,tag=swap,tag=!moving] run function baba:board/movement/move_here
tag @e[type=item_display,tag=baba.object,tag=swap] remove swap

# moving objects need to be re-assigned rules if they have a condition based on location
# moving text needs to be reparsed
# both of these include nearby objects before the move
execute at @s run tag @e[type=item_display,tag=baba.object,tag=assign_move,distance=..1.5] add assign
execute at @s[scores={sprite=30442}] run tag @e[type=item_display,tag=baba.object,scores={sprite=30442},distance=..1.1] add reparse
data modify storage baba:main old_pos set from entity @s Pos
tp @s ~ ~ ~
tag @s[tag=assign_move] add assign
tag @s[scores={sprite=30442}] add reparse
scoreboard players add moved baba 1
tag @s remove moving

data modify storage baba:main new_pos set from entity @s Pos
execute store result score x1 baba run data get storage baba:main old_pos[0] 1000
execute store result score y1 baba run data get storage baba:main old_pos[1] 1000
execute store result score z1 baba run data get storage baba:main old_pos[2] 1000
execute store result score x2 baba run data get storage baba:main new_pos[0] 1000
execute store result score y2 baba run data get storage baba:main new_pos[1] 1000
execute store result score z2 baba run data get storage baba:main new_pos[2] 1000
scoreboard players operation x1 baba -= x2 baba
scoreboard players operation y1 baba -= y2 baba
scoreboard players operation z1 baba -= z2 baba
data modify storage baba:main transform set value [0f,0f,0f]
execute store result storage baba:main transform[0] float 0.001 run scoreboard players get x1 baba
execute store result storage baba:main transform[1] float 0.001 run scoreboard players get y1 baba
execute store result storage baba:main transform[2] float 0.001 run scoreboard players get z1 baba
data modify entity @s transformation.translation set from storage baba:main transform
tag @s add interpolate
schedule function baba:display/interpolate 2t
