data modify storage baba:main condition set from storage baba:main iter_rules[0].conditions[-1][0]
execute if data storage baba:main condition{inverted:1b} run data modify storage baba:main rule append value "not"
data modify storage baba:main rule append from storage baba:main condition.condition
function baba:dev/print_nouns

data remove storage baba:main iter_rules[0].conditions[-1]
execute if data storage baba:main iter_rules[0].conditions[0] run data modify storage baba:main rule append value "and"
execute if data storage baba:main iter_rules[0].conditions[0] run function baba:dev/print_conditions
