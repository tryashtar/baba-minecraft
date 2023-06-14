scoreboard players operation @e[type=item_display,tag=baba.object] sprite -= @s sprite
tag @e[type=item_display,tag=baba.object,tag=!assign,scores={sprite=0}] add assign
scoreboard players operation @e[type=item_display,tag=baba.object] sprite += @s sprite
