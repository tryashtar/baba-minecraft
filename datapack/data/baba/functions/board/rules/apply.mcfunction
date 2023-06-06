data modify storage baba:main rule set from storage baba:main iter_rules[0]

# if this rule's subject matches the object, proceed to check conditions
execute store result score subject baba run data get storage baba:main rule.subject.sprite
execute if data storage baba:main rule.subject{sprite:1065,inverted:0b} as @e[type=item_display,tag=baba.object,tag=!not_all] at @s run function baba:board/rules/apply/check
execute if data storage baba:main rule.subject{sprite:1065,inverted:1b} as @e[type=item_display,tag=baba.object,tag=not_all] at @s run function baba:board/rules/apply/check
execute unless data storage baba:main rule.subject{sprite:1065} if data storage baba:main rule.subject{inverted:0b} as @e[type=item_display,tag=baba.object] at @s if score @s sprite = subject baba run function baba:board/rules/apply/check
execute unless data storage baba:main rule.subject{sprite:1065} if data storage baba:main rule.subject{inverted:1b} as @e[type=item_display,tag=baba.object,tag=!not_all] at @s unless score @s sprite = subject baba run function baba:board/rules/apply/check

data remove storage baba:main iter_rules[0]
execute if data storage baba:main iter_rules[0] run function baba:board/rules/apply
