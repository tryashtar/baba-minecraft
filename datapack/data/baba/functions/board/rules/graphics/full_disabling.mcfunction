data modify storage baba:main rule set from storage baba:main iter_rules[0]
execute if data storage baba:main rule.effect{inverted:1b} unless data storage baba:main rule.conditions[0] run function baba:board/rules/graphics/disabling

execute store result score subject baba run data get storage baba:main rule.subject.sprite
execute store result score effect baba run data get storage baba:main rule.effect.text
execute if score subject baba = effect baba if data storage baba:main rule{verb_text:"is",subject:{inverted:0b},effect:{part:"noun",inverted:0b}} unless data storage baba:main rule.conditions[0] run function baba:board/rules/graphics/transform_disabling

data remove storage baba:main iter_rules[0]
execute if data storage baba:main iter_rules[0] run function baba:board/rules/graphics/full_disabling
