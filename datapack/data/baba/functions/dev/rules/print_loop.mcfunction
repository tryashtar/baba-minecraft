data modify storage baba:main rule set value []
data modify storage baba:main prefixes set from storage baba:main iter_rules[0].conditions
data remove storage baba:main prefixes[{parameters:[{}]}]
execute if data storage baba:main prefixes[0] run function baba:dev/rules/print_prefixes
execute if data storage baba:main iter_rules[0].subject{inverted:1b} run data modify storage baba:main rule append value "not"
data modify storage baba:main rule append from storage baba:main iter_rules[0].subject.sprite
data modify storage baba:main infixes set value []
data modify storage baba:main infixes append from storage baba:main iter_rules[0].conditions[{parameters:[{}]}]
execute if data storage baba:main infixes[0] run function baba:dev/rules/print_infixes
data modify storage baba:main rule append from storage baba:main iter_rules[0].verb
execute if data storage baba:main iter_rules[0].effect{inverted:1b} run data modify storage baba:main rule append value "not"
data modify storage baba:main rule append from storage baba:main iter_rules[0].effect.text
tellraw @a {"storage":"baba:main","nbt":"rule[]","separator":" ","font":"baba:font"}

data remove storage baba:main iter_rules[0]
execute if data storage baba:main iter_rules[0] run function baba:dev/rules/print_loop
