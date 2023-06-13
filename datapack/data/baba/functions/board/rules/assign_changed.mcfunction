scoreboard players operation subject baba = @s sprite
execute if entity @s[tag=!subject_inverted] as @e[type=item_display,tag=baba.object] if score @s sprite = subject baba run tag @s add assign
execute if entity @s[tag=subject_inverted] as @e[type=item_display,tag=baba.object] unless score @s sprite = subject baba run tag @s add assign
