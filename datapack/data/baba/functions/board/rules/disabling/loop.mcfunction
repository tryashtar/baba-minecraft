data modify storage baba:main rule set from storage baba:main iter_rules[0]

data modify storage baba:main disablers set value []
data modify storage baba:main disablers append from storage baba:main rules[{conditions:[],effect:{inverted:1b}}]
execute if data storage baba:main disablers[0] run function baba:board/rules/disabling/check

data modify storage baba:main disablers set value []
execute if data storage baba:main rule{verb:262,effect:{inverted:0b,part:"noun"}} run data modify storage baba:main disablers append from storage baba:main rules[{verb:262,subject:{inverted:0b},effect:{part:"noun",inverted:0b}}]
execute if data storage baba:main rule{verb:12584543,effect:{inverted:0b}} run data modify storage baba:main disablers append from storage baba:main rules[{verb:262,subject:{inverted:0b},effect:{part:"noun",inverted:0b}}]
execute if data storage baba:main disablers[0] unless data storage baba:main rule{done:1b} run function baba:board/rules/disabling/check_transforms

data remove storage baba:main iter_rules[0]
execute if data storage baba:main iter_rules[0] run function baba:board/rules/disabling/loop
