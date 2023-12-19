scoreboard players set passed baba 0
execute store result score inverted baba run data get storage baba:main condition.parameters[0].inverted
execute store result score sprite baba run data get storage baba:main condition.parameters[0].text
execute if score inverted baba matches 0 run tag @e[type=#baba:object,tag=baba.object,tag=!self,tag=!used,predicate=baba:same_sprite,distance=..1.5] add found
execute if score inverted baba matches 1 run tag @e[type=#baba:object,tag=baba.object,tag=!self,tag=!used,tag=!not_all,predicate=!baba:same_sprite,distance=..1.5] add found
execute if entity @e[type=#baba:object,tag=baba.object,tag=found,limit=1] run scoreboard players set passed baba 1
tag @e[type=#baba:object,tag=baba.object,tag=found,limit=1] add used
tag @e[type=#baba:object,tag=baba.object,tag=found] remove found

data remove storage baba:main condition.parameters[0]
execute if score passed baba matches 1 if data storage baba:main condition.parameters[0] run function baba:board/rules/apply/check/near
