scoreboard players operation subject baba = @s sprite
execute if entity @s[tag=subject_all] run tag @e[type=item_display,tag=baba.object,tag=!assign,scores={sprite=2925313}] add assign
execute if entity @s[tag=subject_all] run tag @e[type=item_display,tag=baba.object,tag=!assign,scores={sprite=397973}] add assign
execute if entity @s[tag=!subject_all] as @e[type=item_display,tag=baba.object,tag=!assign,tag=!not_all] unless score @s sprite = subject baba run tag @s add assign
