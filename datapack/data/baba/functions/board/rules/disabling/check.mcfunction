data modify storage baba:main disabler set from storage baba:main disablers[0]

execute store result score subject1 baba run data get storage baba:main disabler.subject.sprite
execute store result score subject2 baba run data get storage baba:main rule.subject.sprite
execute store result score effect1 baba run data get storage baba:main disabler.effect.text
execute store result score effect2 baba run data get storage baba:main rule.effect.text
execute store result score verb1 baba run data get storage baba:main disabler.verb
execute store result score verb2 baba run data get storage baba:main rule.verb

# 'not A' treats text/level/empty as if they match
execute if data storage baba:main disabler.subject{inverted:1b} if data storage baba:main rule.subject{sprite:397973} run scoreboard players operation subject2 baba = subject1 baba
execute if data storage baba:main disabler.subject{inverted:1b} if data storage baba:main rule.subject{sprite:6491892} run scoreboard players operation subject2 baba = subject1 baba
execute if data storage baba:main disabler.subject{inverted:1b} if data storage baba:main rule.subject{sprite:2925313} run scoreboard players operation subject2 baba = subject1 baba

# 'ALL' treats the non-text/level/empty as if they match
execute if data storage baba:main disabler.subject{sprite:1065,inverted:0b} unless data storage baba:main rule.subject{sprite:397973} unless data storage baba:main rule.subject{sprite:6491892} unless data storage baba:main rule.subject{sprite:2925313} run scoreboard players operation subject2 baba = subject1 baba

# 'not ALL' treats text/level/empty as if they match
execute if data storage baba:main disabler.subject{sprite:1065,inverted:1b} if data storage baba:main rule.subject{sprite:397973} run scoreboard players set subject2 baba 0
execute if data storage baba:main disabler.subject{sprite:1065,inverted:1b} if data storage baba:main rule.subject{sprite:2925313} run scoreboard players set subject2 baba 0
execute if data storage baba:main disabler.subject{sprite:1065,inverted:1b} if data storage baba:main rule.subject{sprite:6491892} run scoreboard players set subject2 baba 0

# 'A is not text' disables 'A write B'
execute if score subject1 baba = subject2 baba if data storage baba:main {disabler:{subject:{inverted:0b},verb:262,effect:{text:397973}},rule:{subject:{inverted:0b},verb:12584543}} run function baba:board/rules/disabling/disable
# 'not A is not text' disables 'B write C'
execute unless score subject1 baba = subject2 baba if data storage baba:main {disabler:{subject:{inverted:1b},verb:262,effect:{text:397973}},rule:{subject:{inverted:0b},verb:12584543}} run function baba:board/rules/disabling/disable
# 'not A is not text' disables 'not A write C'
execute if score subject1 baba = subject2 baba if data storage baba:main {disabler:{subject:{inverted:1b},verb:262,effect:{text:397973}},rule:{subject:{inverted:1b},verb:12584543}} run function baba:board/rules/disabling/disable
# 'A is not A' enables 'A is B' if disabled by 'A is A'
execute if score subject1 baba = effect1 baba if score subject1 baba = subject2 baba unless score effect1 baba = effect2 baba if data storage baba:main {disabler:{subject:{inverted:0b}},rule:{subject:{inverted:0b},verb:262,effect:{part:"noun"}}} run function baba:board/rules/disabling/enable
# 'A is not A' enables 'A write B' if disabled by 'A is A'
execute if score subject1 baba = effect1 baba if score subject1 baba = subject2 baba if data storage baba:main {disabler:{subject:{inverted:0b}},rule:{subject:{inverted:0b},verb:12584543,effect:{part:"noun"}}} run function baba:board/rules/disabling/enable
# 'A verb not B' disables 'A verb B'
execute if score subject1 baba = subject2 baba if score verb1 baba = verb2 baba if score effect1 baba = effect2 baba if data storage baba:main {disabler:{subject:{inverted:0b}},rule:{subject:{inverted:0b}}} run function baba:board/rules/disabling/disable
# 'not A verb not B' disables 'C verb B'
execute unless score subject1 baba = subject2 baba if score verb1 baba = verb2 baba if score effect1 baba = effect2 baba if data storage baba:main {disabler:{subject:{inverted:1b}},rule:{subject:{inverted:0b}}} run function baba:board/rules/disabling/disable
# 'not A verb not B' disables 'not A verb B'
execute if score subject1 baba = subject2 baba if score verb1 baba = verb2 baba if score effect1 baba = effect2 baba if data storage baba:main {disabler:{subject:{inverted:1b}},rule:{subject:{inverted:1b}}} run function baba:board/rules/disabling/disable

data remove storage baba:main disablers[0]
execute if data storage baba:main disablers[0] unless data storage baba:main rule{done:1b} run function baba:board/rules/disabling/check