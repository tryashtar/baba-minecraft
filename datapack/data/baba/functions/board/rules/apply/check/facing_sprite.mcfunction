execute store result score check_sprite baba run data get storage baba:main condition.parameters[0].text
execute if entity @s[scores={facing=1}] rotated 270 0 positioned ^ ^ ^1 if score inverted baba matches 0 as @e[type=armor_stand,tag=baba.object,tag=!self,tag=!used,distance=..0.1] if score @s sprite = check_sprite baba run tag @s add found
execute if entity @s[scores={facing=1}] rotated 270 0 positioned ^ ^ ^1 if score inverted baba matches 1 as @e[type=armor_stand,tag=baba.object,tag=!self,tag=!used,tag=!not_all,distance=..0.1] unless score @s sprite = check_sprite baba run tag @s add found
execute if entity @s[scores={facing=2}] rotated 90 0 positioned ^ ^ ^1 if score inverted baba matches 0 as @e[type=armor_stand,tag=baba.object,tag=!self,tag=!used,distance=..0.1] if score @s sprite = check_sprite baba run tag @s add found
execute if entity @s[scores={facing=2}] rotated 90 0 positioned ^ ^ ^1 if score inverted baba matches 1 as @e[type=armor_stand,tag=baba.object,tag=!self,tag=!used,tag=!not_all,distance=..0.1] unless score @s sprite = check_sprite baba run tag @s add found
execute if entity @s[scores={facing=3}] rotated 180 0 positioned ^ ^ ^1 if score inverted baba matches 0 as @e[type=armor_stand,tag=baba.object,tag=!self,tag=!used,distance=..0.1] if score @s sprite = check_sprite baba run tag @s add found
execute if entity @s[scores={facing=3}] rotated 180 0 positioned ^ ^ ^1 if score inverted baba matches 1 as @e[type=armor_stand,tag=baba.object,tag=!self,tag=!used,tag=!not_all,distance=..0.1] unless score @s sprite = check_sprite baba run tag @s add found
execute if entity @s[scores={facing=4}] rotated 0 0 positioned ^ ^ ^1 if score inverted baba matches 0 as @e[type=armor_stand,tag=baba.object,tag=!self,tag=!used,distance=..0.1] if score @s sprite = check_sprite baba run tag @s add found
execute if entity @s[scores={facing=4}] rotated 0 0 positioned ^ ^ ^1 if score inverted baba matches 1 as @e[type=armor_stand,tag=baba.object,tag=!self,tag=!used,tag=!not_all,distance=..0.1] unless score @s sprite = check_sprite baba run tag @s add found
execute if entity @e[type=armor_stand,tag=baba.object,tag=found,limit=1] run scoreboard players set passed baba 1
tag @e[type=armor_stand,tag=baba.object,tag=found,limit=1] add used
tag @e[type=armor_stand,tag=baba.object,tag=found] remove found
