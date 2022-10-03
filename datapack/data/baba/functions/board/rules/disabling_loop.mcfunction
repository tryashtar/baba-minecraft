execute store success score different baba run data modify storage baba:main normal_rules[0].subject.sprite set from storage baba:main iter_rules[0].subject.sprite
execute if score different baba matches 0 store success score different baba run data modify storage baba:main normal_rules[0].effect{type:"property"}.property set from storage baba:main iter_rules[0].effect{type:"property"}.property
execute if score different baba matches 0 store success score different baba run data modify storage baba:main normal_rules[0].effect{type:"noun"}.sprite set from storage baba:main iter_rules[0].effect{type:"noun"}.sprite
execute if score different baba matches 0 store success score different baba run data modify storage baba:main normal_rules[0].verb set from storage baba:main iter_rules[0].verb
execute if score different baba matches 0 run data modify storage baba:main normal_rules[0].text append from storage baba:main normal_rules[0].after_text[]
execute if score different baba matches 0 run function baba:board/rules/disable

data remove storage baba:main normal_rules[0]
execute if data storage baba:main normal_rules[0] run function baba:board/rules/disabling_loop
