data modify storage baba:main rule set from storage baba:main iter_rules[0]

execute store result score subject baba run data get storage baba:main rule.subject.sprite
execute if data storage baba:main rule.subject{sprite_text:"all",inverted:0b} as @e[type=armor_stand,tag=baba.object,tag=!not_all] at @s run function baba:board/rules/apply/check
execute if data storage baba:main rule.subject{sprite_text:"all",inverted:1b} as @e[type=armor_stand,tag=baba.object,tag=not_all] at @s run function baba:board/rules/apply/check
execute unless data storage baba:main rule.subject{sprite_text:"all"} if data storage baba:main rule.subject{inverted:0b} as @e[type=armor_stand,tag=baba.object] at @s if score @s sprite = subject baba run function baba:board/rules/apply/check
execute unless data storage baba:main rule.subject{sprite_text:"all"} if data storage baba:main rule.subject{inverted:1b} as @e[type=armor_stand,tag=baba.object,tag=!not_all] at @s unless score @s sprite = subject baba run function baba:board/rules/apply/check

data remove storage baba:main iter_rules[0]
execute if data storage baba:main iter_rules[0] run function baba:board/rules/apply
