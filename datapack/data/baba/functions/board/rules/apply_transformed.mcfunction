data modify storage baba:main rule set from storage baba:main iter_rules[0]
execute as @e[type=marker,tag=baba.object,tag=transformed] at @s run function baba:board/rules/apply/check

data remove storage baba:main iter_rules[0]
execute if data storage baba:main iter_rules[0] run function baba:board/rules/apply_transformed
