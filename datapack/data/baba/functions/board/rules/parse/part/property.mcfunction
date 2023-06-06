execute if data storage baba:main parsing.state{property:"none"} run data modify storage baba:main parsing.finished set value 1b
execute if data storage baba:main parsing.state{property:"ready"} run data modify storage baba:main parsing.effect_part set value "property"
execute if data storage baba:main parsing.state{property:"ready"} run function baba:board/rules/parse/add/effect
