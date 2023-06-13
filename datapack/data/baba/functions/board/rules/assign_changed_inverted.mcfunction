scoreboard players operation subject baba = @s sprite
execute as @e[type=item_display,tag=baba.object] if score @s sprite = subject baba run tag @s add assign
