data modify storage baba:main normal_rule set from storage baba:main normal_rules[0]
execute store success score different_subjects baba run data modify storage baba:main normal_rule.subject.sprite set from storage baba:main rule.subject.sprite
execute store success score different_effects baba run data modify storage baba:main normal_rule.effect.text set from storage baba:main rule.effect.text
execute store success score different_across baba run data modify storage baba:main normal_rule.effect.text set from storage baba:main rule.subject.sprite

# 'A is not text' disables 'A write B'
execute if score different_subjects baba matches 0 if data storage baba:main rule{verb:"is",effect:{text:"text"}} if data storage baba:main normal_rule{verb:"write"} run function baba:board/rules/graphics/disable
# 'A is not A' enables 'A is B'
execute if score different_across baba matches 0 if score different_effects baba matches 1 if data storage baba:main rule{verb:"is",effect:{part:"noun"}} if data storage baba:main normal_rule{verb:"is",effect:{part:"noun"}} run function baba:board/rules/graphics/enable
# 'A is not A' enables 'A write B'
execute if score different_across baba matches 0 if data storage baba:main rule{verb:"is",effect:{part:"noun"}} if data storage baba:main normal_rule{verb:"write"} run function baba:board/rules/graphics/enable
# 'A verb not B' disables 'A verb B'
execute store success score different_verbs baba run data modify storage baba:main normal_rule.verb set from storage baba:main rule.verb
execute if score different_subjects baba matches 0 if score different_effects baba matches 0 if score different_verbs baba matches 0 run function baba:board/rules/graphics/disable

data remove storage baba:main normal_rules[0]
execute if data storage baba:main normal_rules[0] run function baba:board/rules/graphics/disabling_loop
