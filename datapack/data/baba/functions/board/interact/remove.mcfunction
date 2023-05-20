execute if score @s sprite matches 30442 run tag @e[type=item_display,tag=baba.object,scores={sprite=30442},distance=..1.1] add reparse
tag @s add removed
execute if entity @s[tag=connector] run tag @e[type=item_display,tag=baba.object,tag=connector,distance=..1.1] add dirty
tag @e[type=item_display,tag=baba.object,tag=assign_move,distance=..1.5] add assign
tag @e[type=marker,tag=baba.space,tag=!dirty,distance=..1.1] add dirty
kill @s
