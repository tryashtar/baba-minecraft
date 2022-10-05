data modify storage baba:main rule set from storage baba:main iter_rules[0]
execute if data storage baba:main rule.effect{inverted:1b} unless data storage baba:main rule.conditions[0] run function baba:board/rules/graphics/disabling
execute if data storage baba:main rule.effect{inverted:0b,verb:"is",type:"noun"} unless data storage baba:main rule.conditions[0] run function baba:board/rules/graphics/check_transform_disable
tag @e[type=marker,tag=baba.object,tag=affected] remove affected
execute as @e[type=marker,tag=baba.object] at @s run function baba:board/rules/apply/check/rule
execute if entity @e[type=marker,tag=baba.object,tag=affected,limit=1] run function baba:board/rules/apply/objects

data remove storage baba:main iter_rules[0]
execute if data storage baba:main iter_rules[0] run function baba:board/rules/apply
