data modify storage baba:main rule set from storage baba:main iter_rules[0]
tag @e[type=marker,tag=baba.object,tag=affected] remove affected
execute as @e[type=marker,tag=baba.object,tag=transformed] at @s run function baba:board/rules/apply/check/rule
execute if entity @e[type=marker,tag=baba.object,tag=affected,limit=1] run function baba:board/rules/apply/objects

data remove storage baba:main iter_rules[0]
execute if data storage baba:main iter_rules[0] run function baba:board/rules/apply_transformed
