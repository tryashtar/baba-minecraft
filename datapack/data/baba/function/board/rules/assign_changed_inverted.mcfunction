scoreboard players operation sprite baba = @s sprite
execute if entity @s[tag=subject_all] run tag @e[type=marker,tag=baba.object,tag=active,tag=empty,tag=!assign] add assign
execute if entity @s[tag=subject_all] run tag @e[type=item_display,tag=baba.object,tag=active,tag=!assign,scores={sprite=397973}] add assign
execute if entity @s[tag=subject_group] run tag @e[type=#baba:object,tag=baba.object,tag=active,tag=!assign,tag=!not_all,tag=!prop.group] add assign
execute if entity @s[tag=!subject_all,tag=!subject_group] run tag @e[type=#baba:object,tag=baba.object,tag=active,tag=!assign,tag=!not_all,predicate=!baba:match_score/sprite] add assign
