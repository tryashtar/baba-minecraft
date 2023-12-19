scoreboard players operation sprite baba = @s sprite
execute if entity @s[tag=subject_all] run tag @e[type=#baba:object,tag=baba.object,tag=!not_all,tag=!assign] add assign
execute if entity @s[tag=subject_group] run tag @e[type=#baba:object,tag=baba.object,tag=!assign,tag=prop.group] add assign
execute if entity @s[tag=!subject_all,tag=!subject_group] run tag @e[type=#baba:object,tag=baba.object,tag=!assign,predicate=baba:same_sprite] add assign
