execute store result score subject1 baba run data get storage baba:main rule.subject.sprite
execute store result score subject2 baba run data get storage baba:main normal_rules[0].subject.sprite
execute store result score effect baba run data get storage baba:main normal_rules[0].effect.text
data modify storage baba:main verb set from storage baba:main normal_rules[0].verb_text

# 'A is A' disables 'A is B'
execute if score subject1 baba = subject2 baba unless score subject1 baba = effect baba run function baba:board/rules/graphics/transform_disable
# 'A is A' disables 'A write A'
execute if score subject1 baba = subject2 baba if score subject1 baba = effect baba if data storage baba:main {verb:"write"} run function baba:board/rules/graphics/transform_disable

data remove storage baba:main normal_rules[0]
execute if data storage baba:main normal_rules[0] run function baba:board/rules/graphics/transform_disabling_loop
