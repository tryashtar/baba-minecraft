# apply this rule to this object if it matches the affected sprite and all conditions
tag @s add self
scoreboard players set affected baba 0
data modify storage baba:main sprite set from storage baba:main rule.subject.sprite
execute store result score inverted baba run data get storage baba:main rule.subject.inverted
execute store success score different baba run data modify storage baba:main sprite set from entity @s data.sprite
execute if score inverted baba matches 1 if entity @s[scores={sprite=30442}] run scoreboard players set inverted baba 2
execute if score different baba = inverted baba run scoreboard players set affected baba 1

data modify storage baba:main conditions set from storage baba:main rule.conditions
execute if score affected baba matches 1 if data storage baba:main conditions[0] run function baba:board/rules/apply/check/conditions
execute if score affected baba matches 1 run tag @s add affected
tag @s remove self
