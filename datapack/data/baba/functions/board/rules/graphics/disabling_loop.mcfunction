data modify storage baba:main normal_rules[0].text append from storage baba:main normal_rules[0].after_text[]
execute store success score different baba run data modify storage baba:main normal_rules[0].subject.sprite set from storage baba:main rule.subject.sprite
execute store success score different2 baba run data modify storage baba:main normal_rules[0].effect{type:"noun"}.sprite set from storage baba:main rule.effect{type:"noun"}.sprite
execute if score different baba matches 0 if score different2 baba matches 0 if data storage baba:main rule{verb:"is",effect:{sprite:"text"}} if data storage baba:main normal_rules[0].effect{verb:"write"} run function baba:board/rules/graphics/disable
execute if score different baba matches 0 if score different2 baba matches 1 if data storage baba:main rule{verb:"is"} if data storage baba:main normal_rules[0].effect{verb:"is"} run function baba:board/rules/graphics/enable
execute if score different baba matches 0 if data storage baba:main rule{verb:"is"} if data storage baba:main normal_rules[0].effect{verb:"write"} run function baba:board/rules/graphics/enable
execute if score different baba matches 0 if score different2 baba matches 0 store success score different baba run data modify storage baba:main normal_rules[0].verb set from storage baba:main rule.verb
execute if score different baba matches 0 if score different2 baba matches 0 store success score different baba run data modify storage baba:main normal_rules[0].effect{type:"property"}.property set from storage baba:main rule.effect{type:"property"}.property
execute if score different baba matches 0 if score different2 baba matches 0 run function baba:board/rules/graphics/disable

data remove storage baba:main normal_rules[0]
execute if data storage baba:main normal_rules[0] run function baba:board/rules/graphics/disabling_loop
