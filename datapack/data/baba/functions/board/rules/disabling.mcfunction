data modify storage baba:main normal_rules set value []
data modify storage baba:main normal_rules append from storage baba:main rules[{effect:{inverted:0b}}]
execute if data storage baba:main normal_rules[0] run function baba:board/rules/disabling_loop
