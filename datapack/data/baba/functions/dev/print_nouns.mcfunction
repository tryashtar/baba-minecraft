data modify storage baba:main object set from storage baba:main condition.value[-1][0]
execute if data storage baba:main object{inverted:1b} run data modify storage baba:main rule append value "not"
data modify storage baba:main rule append from storage baba:main object.sprite

data remove storage baba:main condition.value[-1]
execute if data storage baba:main condition.value[0] run data modify storage baba:main rule append value "and"
execute if data storage baba:main condition.value[0] run function baba:dev/print_nouns