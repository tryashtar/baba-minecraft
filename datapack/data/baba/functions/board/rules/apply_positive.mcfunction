data modify storage baba:main rule set from storage baba:main positive_rules[0]

execute store result score subject baba run data get storage baba:main rule.subject.sprite
execute store result score effect baba run data get storage baba:main rule.effect.text
execute if score subject baba = effect baba if data storage baba:main rule{verb_text:"is",subject:{inverted:0b},effect:{part:"noun"}} unless data storage baba:main rule.conditions[0] run function baba:board/rules/graphics/transform_disabling

execute store result score subject baba run data get storage baba:main rule.subject.sprite
execute if data storage baba:main rule.subject{inverted:0b} as @e[type=marker,tag=baba.object] at @s if score @s sprite = subject baba run function baba:board/rules/apply/check
execute if data storage baba:main rule.subject{inverted:1b} as @e[type=marker,tag=baba.object] at @s unless score @s sprite matches 30442 unless score @s sprite = subject baba run function baba:board/rules/apply/check

data remove storage baba:main positive_rules[0]
execute if data storage baba:main positive_rules[0] run function baba:board/rules/apply_positive
