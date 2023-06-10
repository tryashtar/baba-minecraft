tag @s add dirty
execute at @s run tag @e[type=marker,tag=baba.space,tag=!dirty,distance=..0.1,limit=1] add dirty
tag @e[type=marker,tag=baba.space,tag=!dirty,distance=..0.1,limit=1] add dirty

# moving objects need to be re-assigned rules if they have a condition based on location
# moving text needs to be reparsed
# both of these include nearby objects before the move
execute at @s run tag @e[type=item_display,tag=baba.object,tag=assign_move,distance=..1.5] add assign
execute at @s[scores={sprite=397973}] run tag @e[type=item_display,tag=baba.object,scores={sprite=397973},distance=..1.1] add reparse
tp @s ~ ~ ~
tag @s[tag=assign_move] add assign
tag @s[scores={sprite=397973}] add reparse
execute if entity @s[tag=!teleported] run scoreboard players add moved baba 1
