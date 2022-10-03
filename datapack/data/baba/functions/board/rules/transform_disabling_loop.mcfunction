execute store success score different baba run data modify storage baba:main normal_rules[0].subject.sprite set from storage baba:main rule.subject.sprite
execute store success score different2 baba run data modify storage baba:main normal_rules[0].effect.sprite set from storage baba:main rule.subject.sprite
execute if score different baba matches 0 if score different2 baba matches 1 run data modify storage baba:main normal_rules[0].text append from storage baba:main normal_rules[0].after_text[]
execute if score different baba matches 0 if score different2 baba matches 1 run function baba:board/rules/transform_disable

data remove storage baba:main normal_rules[0]
execute if data storage baba:main normal_rules[0] run function baba:board/rules/transform_disabling_loop
