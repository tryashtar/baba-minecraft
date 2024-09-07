scoreboard players operation verb baba = @s life
scoreboard players operation effect baba = @s text
execute store success score effect_noun baba if entity @s[tag=effect_noun]
data modify storage baba:main rule_conditions set value []
execute if entity @s[tag=has_conditions] run data modify storage baba:main rule_conditions set from entity @s data.conditions
data modify storage baba:main effect set value {}
execute store result storage baba:main effect.text int 1 run scoreboard players get effect baba
execute store success storage baba:main effect.inverted byte 1 if entity @s[tag=effect_inverted]

execute if entity @s[tag=!subject_inverted] as @e[type=#baba:object,tag=baba.object,tag=active,tag=joined_group,tag=assign] at @s run function baba:board/rules/apply/check
execute if entity @s[tag=subject_inverted] as @e[type=#baba:object,tag=baba.object,tag=active,tag=!joined_group,tag=!not_all,tag=assign] at @s run function baba:board/rules/apply/check
