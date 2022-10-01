scoreboard players set affected baba 0
function baba:board/rules/apply/check/sprite
execute if score affected baba matches 1 if data storage baba:main check_rules[0].conditions[0] run function baba:board/rules/apply/check/conditions
execute if score affected baba matches 1 run data modify entity @s data.properties append from storage baba:main check_rules[0].effects[].property

data remove storage baba:main check_rules[0]
execute if data storage baba:main check_rules[0] run function baba:board/rules/apply/rule
