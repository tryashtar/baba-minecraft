execute if score @s color matches 1.. run scoreboard players operation @e[type=item_display,tag=spawn,distance=..0.1,limit=1] color = @s color
execute unless score @s appearance matches 0 run scoreboard players operation @e[type=item_display,tag=spawn,distance=..0.1,limit=1] appearance = @s appearance
