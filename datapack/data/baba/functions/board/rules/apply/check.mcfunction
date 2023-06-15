tag @s add self
tag @s remove check
scoreboard players set affected baba 1
data modify storage baba:main conditions set from storage baba:main rule_conditions
execute if data storage baba:main conditions[0] run function baba:board/rules/apply/check/conditions
execute if score affected baba matches 1 run function baba:board/rules/apply/object
tag @s remove self
