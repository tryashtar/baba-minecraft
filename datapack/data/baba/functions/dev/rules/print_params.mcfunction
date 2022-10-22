data modify storage baba:main object set from storage baba:main condition.parameters[0]
execute if data storage baba:main object{inverted:1b} run data modify storage baba:main rule append value "not"
data modify storage baba:main rule append from storage baba:main object.sprite

data remove storage baba:main condition.parameters[0]
execute if data storage baba:main condition.parameters[0] run data modify storage baba:main rule append value "&"
execute if data storage baba:main condition.parameters[0] run function baba:dev/rules/print_params
