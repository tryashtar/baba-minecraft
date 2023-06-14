tag @s add baba.rule
tag @s add changed
data modify storage baba:main rule set from storage baba:main new_rules[0]
execute store result score @s sprite run data get storage baba:main rule.subject.sprite
execute store result score @s text run data get storage baba:main rule.effect.text
execute store result score @s life run data get storage baba:main rule.verb
execute if data storage baba:main rule.subject{inverted:1b} run tag @s add subject_inverted
execute if data storage baba:main rule.effect{inverted:1b} run tag @s add effect_inverted
execute if data storage baba:main rule.effect{part:"noun"} run tag @s add effect_noun
execute if data storage baba:main rule{conditions:[],effect:{inverted:1b}} run tag @s add disabler
execute if score @s life matches 262 if data storage baba:main rule{conditions:[],effect:{inverted:0b,part:"noun"}} run tag @s add transform_disabler
tag @s[scores={sprite=397973}] add subject_text
tag @s[scores={sprite=6491892}] add subject_level
tag @s[scores={sprite=2925313}] add subject_empty
tag @s[scores={sprite=1065}] add subject_all
tag @s[scores={sprite=4085899}] add subject_group
data modify entity @s data.conditions set from storage baba:main rule.conditions
data modify entity @s data.text_ids set from storage baba:main rule.text_ids
function baba:board/rules/render/render
data modify entity @s CustomName set from storage baba:main text_rule

data remove storage baba:main new_rules[0]
execute if data storage baba:main new_rules[0] summon marker run function baba:board/rules/parse/finish_summon
