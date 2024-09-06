execute store result score sprite baba run data get storage baba:main condition.parameters[0].text
execute if score @s facing matches 1 rotated 270 0 positioned ^ ^ ^1 if score inverted baba matches 0 as @e[type=#baba:object,tag=baba.object,tag=!self,tag=!used,predicate=baba:match_score/sprite,distance=..0.1] run tag @s add found
execute if score @s facing matches 1 rotated 270 0 positioned ^ ^ ^1 if score inverted baba matches 1 as @e[type=#baba:object,tag=baba.object,tag=!self,tag=!used,tag=!not_all,predicate=!baba:match_score/sprite,distance=..0.1] run tag @s add found
execute if score @s facing matches 2 rotated 90 0 positioned ^ ^ ^1 if score inverted baba matches 0 as @e[type=#baba:object,tag=baba.object,tag=!self,tag=!used,predicate=baba:match_score/sprite,distance=..0.1] run tag @s add found
execute if score @s facing matches 2 rotated 90 0 positioned ^ ^ ^1 if score inverted baba matches 1 as @e[type=#baba:object,tag=baba.object,tag=!self,tag=!used,tag=!not_all,predicate=!baba:match_score/sprite,distance=..0.1] run tag @s add found
execute if score @s facing matches 3 rotated 180 0 positioned ^ ^ ^1 if score inverted baba matches 0 as @e[type=#baba:object,tag=baba.object,tag=!self,tag=!used,predicate=baba:match_score/sprite,distance=..0.1] run tag @s add found
execute if score @s facing matches 3 rotated 180 0 positioned ^ ^ ^1 if score inverted baba matches 1 as @e[type=#baba:object,tag=baba.object,tag=!self,tag=!used,tag=!not_all,predicate=!baba:match_score/sprite,distance=..0.1] run tag @s add found
execute if score @s facing matches 4 rotated 0 0 positioned ^ ^ ^1 if score inverted baba matches 0 as @e[type=#baba:object,tag=baba.object,tag=!self,tag=!used,predicate=baba:match_score/sprite,distance=..0.1] run tag @s add found
execute if score @s facing matches 4 rotated 0 0 positioned ^ ^ ^1 if score inverted baba matches 1 as @e[type=#baba:object,tag=baba.object,tag=!self,tag=!used,tag=!not_all,predicate=!baba:match_score/sprite,distance=..0.1] run tag @s add found
execute if entity @e[type=#baba:object,tag=baba.object,tag=found,limit=1] run scoreboard players set passed baba 1
tag @e[type=#baba:object,tag=baba.object,tag=found,limit=1] add used
tag @e[type=#baba:object,tag=baba.object,tag=found] remove found
