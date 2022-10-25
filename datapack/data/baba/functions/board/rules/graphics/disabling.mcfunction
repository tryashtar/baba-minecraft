data modify storage baba:main normal_rules set from storage baba:main positive_rules
execute if data storage baba:main normal_rules[0] run function baba:board/rules/graphics/disabling_loop
