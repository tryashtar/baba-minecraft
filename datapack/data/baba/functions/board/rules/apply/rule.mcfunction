data modify storage baba:main rule set from storage baba:main check_rules[0]

# apply this rule to this object if it matches the affected sprite and all conditions
scoreboard players set affected baba 0
data modify storage baba:main sprite set from storage baba:main rule.subject.sprite
execute store result score inverted baba run data get storage baba:main rule.subject.inverted
execute store success score different baba run data modify storage baba:main sprite set from entity @s data.sprite
execute if score different baba = inverted baba run scoreboard players set affected baba 1

execute if score affected baba matches 1 if data storage baba:main rule.conditions[0] run function baba:board/rules/apply/check/conditions
execute if score affected baba matches 1 run function baba:board/rules/apply/assign

data remove storage baba:main check_rules[0]
execute if data storage baba:main check_rules[0] run function baba:board/rules/apply/rule
