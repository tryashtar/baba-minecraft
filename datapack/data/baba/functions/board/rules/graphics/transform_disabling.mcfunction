data modify storage baba:main normal_rules set value []
data modify storage baba:main normal_rules append from storage baba:main rules[{effect:{inverted:0b,verb:"is",type:"noun"}}]
data modify storage baba:main normal_rules append from storage baba:main rules[{effect:{inverted:0b,verb:"write"}}]
execute if data storage baba:main normal_rules[0] run function baba:board/rules/graphics/transform_disabling_loop
