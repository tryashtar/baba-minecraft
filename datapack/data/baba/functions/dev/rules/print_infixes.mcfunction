data modify storage baba:main condition set from storage baba:main infixes[0]
execute if data storage baba:main condition{inverted:1b} run data modify storage baba:main rule append value "not"
execute store result score hash baba run data get storage baba:main condition.condition
function baba:dev/rules/unhash
data modify storage baba:main rule append from storage baba:main object_text
function baba:dev/rules/print_params

data remove storage baba:main infixes[0]
execute if data storage baba:main infixes[0] run data modify storage baba:main rule append value "&"
execute if data storage baba:main infixes[0] run function baba:dev/rules/print_infixes
