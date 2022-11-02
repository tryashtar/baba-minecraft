execute at @s run tag @e[type=armor_stand,tag=baba.object,tag=assign_move,distance=..1.1] add assign
execute at @s[scores={sprite=30442}] run tag @e[type=armor_stand,tag=baba.object,scores={sprite=30442},distance=..1.1] add reparse
tp @s ~ ~ ~
tag @s[tag=assign_move] add assign
tag @s[scores={sprite=30442}] add reparse
scoreboard players set @s move_frame 2
scoreboard players add moved baba 1
