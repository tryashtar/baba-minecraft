tag @s add moving
# things without 'swap' trade places with things with 'swap' and vice versa
execute if entity @s[tag=!teleported,tag=!swap,tag=!falling] run tag @e[type=armor_stand,tag=baba.object,nbt={HandItems:[{tag:{properties:["swap"]}}]},distance=..0.1] add swap
execute if entity @s[tag=!teleported,tag=!swap,tag=!falling,nbt={HandItems:[{tag:{properties:["swap"]}}]}] run tag @e[type=armor_stand,tag=baba.object,nbt=!{HandItems:[{tag:{properties:["swap"]}}]},distance=..0.1] add swap
execute at @s as @e[type=armor_stand,tag=baba.object,tag=swap,tag=!moving] run function baba:board/movement/move_here
tag @e[type=armor_stand,tag=baba.object,tag=swap] remove swap

# moving objects need to be re-assigned rules if they have a condition based on location
# moving text needs to be reparsed
# both of these include nearby objects before the move
execute at @s run tag @e[type=armor_stand,tag=baba.object,tag=assign_move,distance=..1.1] add assign
execute at @s[scores={sprite=30442}] run tag @e[type=armor_stand,tag=baba.object,scores={sprite=30442},distance=..1.1] add reparse
tp @s ~ ~ ~
tag @s[tag=assign_move] add assign
tag @s[scores={sprite=30442}] add reparse
scoreboard players set @s move_frame 2
scoreboard players add moved baba 1
tag @s remove moving
