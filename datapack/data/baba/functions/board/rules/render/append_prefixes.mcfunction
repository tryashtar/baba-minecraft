data modify storage baba:main condition set from storage baba:main prefixes[0]
execute if data storage baba:main condition{inverted:1b} run data modify storage baba:main rule_text append value "not "
data modify storage baba:main rule_text append from storage baba:main condition.condition_text[]
data modify storage baba:main rule_text append value " "

data remove storage baba:main prefixes[0]
execute if data storage baba:main prefixes[0] run data modify storage baba:main rule_text append value "& "
execute if data storage baba:main prefixes[0] run function baba:board/rules/render/append_prefixes
