execute store success score different baba run data modify storage baba:main normal_rules[0].subject.sprite set from storage baba:main disablers[0].subject.sprite
execute if score different baba matches 0 store success score different baba run data modify storage baba:main normal_rules[0].verb set from storage baba:main disablers[0].verb
execute if score different baba matches 0 run function baba:board/rules/disable

data remove storage baba:main normal_rules[0]
execute unless data storage baba:main normal_rules[0] run data remove storage baba:main disablers[0]
execute unless data storage baba:main normal_rules[0] if data storage baba:main disablers[0] run data modify storage baba:main normal_rules append from storage baba:main rules[{effect:{inverted:0b}}]
execute if data storage baba:main normal_rules[0] if data storage baba:main disablers[0] run function baba:board/rules/disabling_loop
