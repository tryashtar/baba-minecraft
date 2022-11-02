data modify storage baba:main normal_rule set from storage baba:main normal_rules[0]

execute store result score subject1 baba run data get storage baba:main rule.subject.sprite
execute store result score subject2 baba run data get storage baba:main normal_rule.subject.sprite
execute store result score effect1 baba run data get storage baba:main rule.effect.text
execute store result score effect2 baba run data get storage baba:main normal_rule.effect.text
execute store result score verb1 baba run data get storage baba:main rule.verb
execute store result score verb2 baba run data get storage baba:main normal_rule.verb

# 'not A' treats text/level/empty as if they match
execute if data storage baba:main rule.subject{inverted:1b} if data storage baba:main normal_rule.subject{sprite_text:"text"} run scoreboard players operation subject2 baba = subject1 baba
execute if data storage baba:main rule.subject{inverted:1b} if data storage baba:main normal_rule.subject{sprite_text:"level"} run scoreboard players operation subject2 baba = subject1 baba
execute if data storage baba:main rule.subject{inverted:1b} if data storage baba:main normal_rule.subject{sprite_text:"empty"} run scoreboard players operation subject2 baba = subject1 baba

# 'ALL' treats the non-text/level/empty as if they match
execute if data storage baba:main rule.subject{sprite_text:"all",inverted:0b} unless data storage baba:main normal_rule.subject{sprite_text:"text"} unless data storage baba:main normal_rule.subject{sprite_text:"level"} unless data storage baba:main normal_rule.subject{sprite_text:"empty"} run scoreboard players operation subject2 baba = subject1 baba

# 'not ALL' treats text/level/empty as if they match
execute if data storage baba:main rule.subject{sprite_text:"all",inverted:1b} if data storage baba:main normal_rule.subject{sprite_text:"text"} run scoreboard players set subject2 baba 0
execute if data storage baba:main rule.subject{sprite_text:"all",inverted:1b} if data storage baba:main normal_rule.subject{sprite_text:"empty"} run scoreboard players set subject2 baba 0
execute if data storage baba:main rule.subject{sprite_text:"all",inverted:1b} if data storage baba:main normal_rule.subject{sprite_text:"level"} run scoreboard players set subject2 baba 0

# 'A is not text' disables 'A write B'
execute if score subject1 baba = subject2 baba if data storage baba:main {rule:{subject:{inverted:0b},verb_text:"is",effect:{text_text:"text"}},normal_rule:{subject:{inverted:0b},verb_text:"write"}} run function baba:board/rules/graphics/disable
# 'not A is not text' disables 'B write C'
execute unless score subject1 baba = subject2 baba if data storage baba:main {rule:{subject:{inverted:1b},verb_text:"is",effect:{text_text:"text"}},normal_rule:{subject:{inverted:0b},verb_text:"write"}} run function baba:board/rules/graphics/disable
# 'not A is not text' disables 'not A write C'
execute if score subject1 baba = subject2 baba if data storage baba:main {rule:{subject:{inverted:1b},verb_text:"is",effect:{text_text:"text"}},normal_rule:{subject:{inverted:1b},verb_text:"write"}} run function baba:board/rules/graphics/disable
# 'A is not A' enables 'A is B' if disabled by 'A is A'
execute if score subject1 baba = effect1 baba if score subject1 baba = subject2 baba unless score effect1 baba = effect2 baba if data storage baba:main {rule:{subject:{inverted:0b}},normal_rule:{subject:{inverted:0b},verb_text:"is",effect:{part:"noun"}}} run function baba:board/rules/graphics/enable
# 'A is not A' enables 'A write B' if disabled by 'A is A'
execute if score subject1 baba = effect1 baba if score subject1 baba = subject2 baba if data storage baba:main {rule:{subject:{inverted:0b}},normal_rule:{subject:{inverted:0b},verb_text:"write",effect:{part:"noun"}}} run function baba:board/rules/graphics/enable
# 'A verb not B' disables 'A verb B'
execute if score subject1 baba = subject2 baba if score verb1 baba = verb2 baba if score effect1 baba = effect2 baba if data storage baba:main {rule:{subject:{inverted:0b}},normal_rule:{subject:{inverted:0b}}} run function baba:board/rules/graphics/disable
# 'not A verb not B' disables 'C verb B'
execute unless score subject1 baba = subject2 baba if score verb1 baba = verb2 baba if score effect1 baba = effect2 baba if data storage baba:main {rule:{subject:{inverted:1b}},normal_rule:{subject:{inverted:0b}}} run function baba:board/rules/graphics/disable
# 'not A verb not B' disables 'not A verb B'
execute if score subject1 baba = subject2 baba if score verb1 baba = verb2 baba if score effect1 baba = effect2 baba if data storage baba:main {rule:{subject:{inverted:1b}},normal_rule:{subject:{inverted:1b}}} run function baba:board/rules/graphics/disable

data remove storage baba:main normal_rules[0]
execute if data storage baba:main normal_rules[0] run function baba:board/rules/graphics/disabling_loop
