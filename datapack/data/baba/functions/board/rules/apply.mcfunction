data modify storage baba:main rule set from storage baba:main iter_rules[0]
execute if data storage baba:main rule.effect{inverted:1b} unless data storage baba:main rule.conditions[0] run function baba:board/rules/graphics/disabling
execute if data storage baba:main rule{verb:206,subject:{inverted:0b},effect:{inverted:0b,part:"noun"}} unless data storage baba:main rule.conditions[0] run function baba:board/rules/graphics/check_transform_disable
execute store result score subject baba run data get storage baba:main rule.subject.sprite
execute if data storage baba:main rule{inverted:0b} as @e[type=marker,tag=baba.object] at @s if score @s sprite = subject baba run function baba:board/rules/apply/check
execute if data storage baba:main rule{inverted:1b} as @e[type=marker,tag=baba.object] at @s unless score @s sprite matches 30442 unless score @s sprite = subject baba run function baba:board/rules/apply/check

data remove storage baba:main iter_rules[0]
execute if data storage baba:main iter_rules[0] run function baba:board/rules/apply
