scoreboard players set passed baba 0
execute store result score inverted baba run data get storage baba:main condition.parameters[0].inverted
execute store result score check_sprite baba run data get storage baba:main condition.parameters[0].text
execute if score inverted baba matches 0 as @e[type=#baba:object,tag=baba.object,tag=!self,tag=!used,distance=..1.5] if score @s sprite = check_sprite baba run tag @s add found
execute if score inverted baba matches 1 as @e[type=#baba:object,tag=baba.object,tag=!self,tag=!used,tag=!not_all,distance=..1.5] unless score @s sprite = check_sprite baba run tag @s add found
execute if entity @e[type=#baba:object,tag=baba.object,tag=found,limit=1] run scoreboard players set passed baba 1
tag @e[type=#baba:object,tag=baba.object,tag=found,limit=1] add used
tag @e[type=#baba:object,tag=baba.object,tag=found] remove found

data remove storage baba:main condition.parameters[0]
execute if score passed baba matches 1 if data storage baba:main condition.parameters[0] run function baba:board/rules/apply/check/near
