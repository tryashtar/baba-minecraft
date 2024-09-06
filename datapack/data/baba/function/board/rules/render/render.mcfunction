data modify storage baba:main rule_text set value []
data modify storage baba:main prefixes set from storage baba:main rule.conditions
data remove storage baba:main prefixes[{parameters:[{}]}]
execute if data storage baba:main prefixes[0] run function baba:board/rules/render/append_prefixes
execute if data storage baba:main rule.subject{inverted:1b} run data modify storage baba:main rule_text append value "not "
data modify storage baba:main rule_text append from storage baba:main rule.subject.sprite_text[]
data modify storage baba:main rule_text append value " "
data modify storage baba:main infixes set value []
data modify storage baba:main infixes append from storage baba:main rule.conditions[{parameters:[{}]}]
execute if data storage baba:main infixes[0] run function baba:board/rules/render/append_infixes
data modify storage baba:main rule_text append from storage baba:main rule.verb_text[]
data modify storage baba:main rule_text append value " "
execute if data storage baba:main rule.effect{inverted:1b} run data modify storage baba:main rule_text append value "not "
data modify storage baba:main rule_text append from storage baba:main rule.effect.text_text[]
# I would use /execute summon here, but it spams log with "Not a string" unless you assign to alignment when summoning
summon text_display ~ ~ ~ {UUID:[I;0,0,0,1],alignment:"center"}
execute as 0-0-0-0-1 run function baba:board/rules/render/render_single
kill 0-0-0-0-1
