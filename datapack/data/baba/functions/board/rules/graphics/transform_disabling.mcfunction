data modify storage baba:main normal_rules set value []
data modify storage baba:main normal_rules append from storage baba:main rules[{verb_text:"is",effect:{inverted:0b,part:"noun"}}]
data modify storage baba:main normal_rules append from storage baba:main rules[{verb_text:"write",effect:{inverted:0b}}]
execute if data storage baba:main normal_rules[0] run function baba:board/rules/graphics/transform_disabling_loop
