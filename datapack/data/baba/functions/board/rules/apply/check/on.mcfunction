scoreboard players set passed baba 0
execute store result score inverted baba run data get storage baba:main condition.parameters[0].inverted
execute store result score check_sprite baba run data get storage baba:main condition.parameters[0].text
execute if score inverted baba matches 0 as @e[type=marker,tag=baba.object,tag=!self,distance=..0.1] if score @s sprite = check_sprite baba run scoreboard players set passed baba 1
execute if score inverted baba matches 1 as @e[type=marker,tag=baba.object,tag=!self,distance=..0.1] unless score @s sprite matches 30442 unless score @s sprite = check_sprite baba run scoreboard players set passed baba 1

data remove storage baba:main condition.parameters[0]
execute if score passed baba matches 1 if data storage baba:main condition.parameters[0] run function baba:board/rules/apply/check/on
