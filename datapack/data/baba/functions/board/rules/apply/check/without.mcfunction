scoreboard players set passed baba 1
execute store result score inverted baba run data get storage baba:main condition.parameters[0].inverted
execute store result score check_sprite baba run data get storage baba:main condition.parameters[0].text
scoreboard players operation @e[type=item_display,tag=baba.object,tag=!self,tag=!used] sprite -= check_sprite baba
execute if score inverted baba matches 0 run tag @e[type=item_display,tag=baba.object,tag=!self,tag=!used,scores={sprite=0},limit=1] add found
execute if score inverted baba matches 1 run tag @e[type=item_display,tag=baba.object,tag=!self,tag=!used,tag=!not_all,scores={sprite=0},limit=1] add found
scoreboard players operation @e[type=item_display,tag=baba.object,tag=!self,tag=!used] sprite += check_sprite baba
execute if entity @e[type=item_display,tag=baba.object,tag=found,limit=1] run scoreboard players set passed baba 0
tag @e[type=item_display,tag=baba.object,tag=found,limit=1] add used
tag @e[type=item_display,tag=baba.object,tag=found,limit=1] remove found

data remove storage baba:main condition.parameters[0]
execute if score passed baba matches 1 if data storage baba:main condition.parameters[0] run function baba:board/rules/apply/check/without
