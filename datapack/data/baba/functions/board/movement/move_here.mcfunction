execute at @s[scores={sprite=30442}] run tag @e[type=armor_stand,tag=baba.object,scores={sprite=30442},distance=..1.01] add reparse
tp @s ~ ~ ~
tag @s[scores={sprite=30442}] add reparse
scoreboard players set @s move_frame 2
