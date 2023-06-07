execute store result score subject1 baba run data get storage baba:main disablers[0].subject.sprite
execute store result score subject2 baba run data get storage baba:main rule.subject.sprite
execute store result score effect1 baba run data get storage baba:main disablers[0].effect.text
execute store result score effect2 baba run data get storage baba:main rule.effect.text
data modify storage baba:main verb set from storage baba:main rule.verb

# 'A is A' disables 'A is B'
execute if score subject1 baba = effect1 baba if score subject1 baba = subject2 baba unless score subject1 baba = effect1 baba run function baba:board/rules/disabling/disable_transforms
# 'A is A' disables 'A write A'
execute if score subject1 baba = effect1 baba if score subject1 baba = subject2 baba if score subject1 baba = effect1 baba if data storage baba:main {verb:12584543} run function baba:board/rules/disabling/disable_transforms

data remove storage baba:main disablers[0]
execute if data storage baba:main disablers[0] run function baba:board/rules/disabling/check_transforms
