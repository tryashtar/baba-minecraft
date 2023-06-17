scoreboard players operation subject baba = @s sprite
execute if entity @s[tag=subject_all] run tag @e[type=item_display,tag=baba.object,tag=!not_all,tag=!assign] add assign
execute if entity @s[tag=subject_group] run tag @e[type=item_display,tag=baba.object,tag=!assign,tag=prop.group] add assign
execute if entity @s[tag=!subject_all,tag=!subject_group] as @e[type=item_display,tag=baba.object,tag=!assign] if score @s sprite = subject baba run tag @s add assign
