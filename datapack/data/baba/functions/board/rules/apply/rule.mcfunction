data modify storage baba:main rule set from storage baba:main check_rules[0]

# apply this rule to this object if it matches the affected sprite and all conditions
scoreboard players set affected baba 0
function baba:board/rules/apply/check/sprite
execute if score affected baba matches 1 if data storage baba:main rule.conditions[0] run function baba:board/rules/apply/check/conditions
execute if score affected baba matches 1 run function baba:board/rules/apply/assign

data remove storage baba:main check_rules[0]
execute if data storage baba:main check_rules[0] run function baba:board/rules/apply/rule
