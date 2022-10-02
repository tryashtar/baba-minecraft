data modify storage baba:main disablers set value []
data modify storage baba:main disablers append from storage baba:main rules[{conditions:[],effect:{inverted:1b}}]
data modify storage baba:main normal_rules set value []
data modify storage baba:main normal_rules append from storage baba:main rules[{effect:{inverted:0b}}]
execute if data storage baba:main disablers[0] run function baba:board/rules/disabling_loop
tag @e[type=marker,tag=baba.object,scores={text_used=0}] add disabled
