data modify storage baba:main normal_rules set value []
data modify storage baba:main normal_rules append from storage baba:main rules[{verb:262,effect:{inverted:0b,part:"noun"}}]
data modify storage baba:main normal_rules append from storage baba:main rules[{verb:12584543,effect:{inverted:0b}}]
execute if data storage baba:main normal_rules[0] run function baba:board/rules/graphics/transform_disabling_loop
