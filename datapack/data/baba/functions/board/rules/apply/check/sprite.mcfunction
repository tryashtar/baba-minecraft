data modify storage baba:main sprite set from storage baba:main rule.affected[0].sprite
execute store result score inverted baba run data get storage baba:main rule.affected[0].inverted
execute store success score different baba run data modify storage baba:main sprite set from entity @s data.sprite
execute if score different baba = inverted baba run scoreboard players set affected baba 1

data remove storage baba:main rule.affected[0]
execute if score affected baba matches 0 if data storage baba:main rule.affected[0] run function baba:board/rules/apply/check/sprite
