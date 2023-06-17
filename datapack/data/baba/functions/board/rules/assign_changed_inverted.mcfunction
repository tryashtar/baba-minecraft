scoreboard players operation subject baba = @s sprite
execute if entity @s[tag=subject_all] run tag @e[type=marker,tag=baba.object,tag=empty,tag=!assign] add assign
execute if entity @s[tag=subject_all] run tag @e[type=item_display,tag=baba.object,tag=!assign,scores={sprite=397973}] add assign
execute if entity @s[tag=subject_group] run tag @e[type=#baba:object,tag=baba.object,tag=!assign,tag=!not_all,tag=!prop.group] add assign
execute if entity @s[tag=!subject_all,tag=!subject_group] as @e[type=#baba:object,tag=baba.object,tag=!assign,tag=!not_all] unless score @s sprite = subject baba run tag @s add assign
