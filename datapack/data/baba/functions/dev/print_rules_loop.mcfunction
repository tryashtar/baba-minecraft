data modify storage baba:main rule set value []
execute if data storage baba:main iter_rules[0].subject{inverted:1b} run data modify storage baba:main rule append value "not"
data modify storage baba:main rule append from storage baba:main iter_rules[0].subject.sprite
execute if data storage baba:main iter_rules[0].conditions[0] run function baba:dev/print_conditions
data modify storage baba:main rule append from storage baba:main iter_rules[0].verb
execute if data storage baba:main iter_rules[0].effect{inverted:1b} run data modify storage baba:main rule append value "not"
data modify storage baba:main rule append from storage baba:main iter_rules[0].effect.text
tellraw @a {"storage":"baba:main","nbt":"rule[]","separator":" "}

data remove storage baba:main iter_rules[0]
execute if data storage baba:main iter_rules[0] run function baba:dev/print_rules_loop
