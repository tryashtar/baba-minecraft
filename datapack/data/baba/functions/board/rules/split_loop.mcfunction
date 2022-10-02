data modify storage baba:main rule set value {}
data modify storage baba:main rule.conditions set from storage baba:main conditions
data modify storage baba:main rule.subject set from storage baba:main subjects[0]
data modify storage baba:main rule.effect set from storage baba:main effects[0]
data modify storage baba:main rule.verb set from entity @s data.text
data modify storage baba:main rule.text set value []
data modify storage baba:main rule.text append from storage baba:main text_id
data modify storage baba:main rule.text append from storage baba:main rule.subject.text[]
data modify storage baba:main rule.text append from storage baba:main rule.effect.text[]
data modify storage baba:main rule.text append from storage baba:main rule.conditions[][].text[]
data modify storage baba:main rule.text append from storage baba:main rule.conditions[][].value[][].text[]
data modify storage baba:main used_text set from storage baba:main rule.text
function baba:board/rules/split_increment
data modify storage baba:main rules append from storage baba:main rule

data remove storage baba:main effects[0]
execute unless data storage baba:main effects[0] run data remove storage baba:main subjects[0]
execute unless data storage baba:main effects[0] if data storage baba:main subjects[0] run data modify storage baba:main effects set from storage baba:main effect_collection
execute if data storage baba:main effects[0] if data storage baba:main subjects[0] run function baba:board/rules/split_loop
