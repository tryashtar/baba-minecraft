# if this rule's subject matches the object, proceed to check conditions
scoreboard players operation sprite baba = @s sprite
scoreboard players operation verb baba = @s life
scoreboard players operation effect baba = @s text
execute store success score effect_noun baba if entity @s[tag=effect_noun]
data modify storage baba:main rule_conditions set value []
execute if entity @s[tag=has_conditions] run data modify storage baba:main rule_conditions set from entity @s data.conditions
data modify storage baba:main effect set value {}
execute store result storage baba:main effect.text int 1 run scoreboard players get effect baba
execute store success storage baba:main effect.inverted byte 1 if entity @s[tag=effect_inverted]

execute if entity @s[tag=!subject_inverted,tag=subject_all] run tag @e[type=#baba:object,tag=baba.object,tag=!not_all,tag=assign] add check
execute if entity @s[tag=subject_inverted,tag=subject_all] run tag @e[type=marker,tag=baba.object,tag=empty,tag=assign] add check
execute if entity @s[tag=subject_inverted,tag=subject_all] run tag @e[type=#baba:object,tag=baba.object,tag=assign,scores={sprite=397973}] add check
execute if entity @s[tag=!subject_inverted,tag=!subject_all,tag=!subject_group] run tag @e[type=#baba:object,tag=baba.object,tag=assign,predicate=baba:match_score/sprite] add check
execute if entity @s[tag=subject_inverted,tag=!subject_all,tag=!subject_group] run tag @e[type=#baba:object,tag=baba.object,tag=assign,predicate=!baba:match_score/sprite] add check

execute as @e[type=#baba:object,tag=baba.object,tag=assign,tag=check] at @s run function baba:board/rules/apply/check
