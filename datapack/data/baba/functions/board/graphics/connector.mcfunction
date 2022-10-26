tag @s remove up
tag @s remove down
tag @s remove left
tag @s remove right
scoreboard players operation sprite baba = @s sprite

scoreboard players set connect baba 0
execute positioned ~1 ~ ~ as @e[type=armor_stand,tag=baba.object,tag=connector,distance=..0.1] if score @s sprite = sprite baba run scoreboard players set connect baba 1
execute if score connect baba matches 1 run tag @s add up
execute unless block ~1 ~-1 ~ black_concrete run tag @s add up
execute if entity @s[type=armor_stand,tag=baba.object,tag=!up,scores={sprite=60823}] positioned ~1 ~ ~ if entity @e[type=armor_stand,tag=baba.object,scores={sprite=26837},distance=..0.1,limit=1] run tag @s add up

scoreboard players set connect baba 0
execute positioned ~-1 ~ ~ as @e[type=armor_stand,tag=baba.object,tag=connector,distance=..0.1] if score @s sprite = sprite baba run scoreboard players set connect baba 1
execute if score connect baba matches 1 run tag @s add down
execute unless block ~-1 ~-1 ~ black_concrete run tag @s add down
execute if entity @s[type=armor_stand,tag=baba.object,tag=!down,scores={sprite=60823}] positioned ~-1 ~ ~ if entity @e[type=armor_stand,tag=baba.object,scores={sprite=26837},distance=..0.1,limit=1] run tag @s add down

scoreboard players set connect baba 0
execute positioned ~ ~ ~-1 as @e[type=armor_stand,tag=baba.object,tag=connector,distance=..0.1] if score @s sprite = sprite baba run scoreboard players set connect baba 1
execute if score connect baba matches 1 run tag @s add left
execute unless block ~ ~-1 ~-1 black_concrete run tag @s add left
execute if entity @s[type=armor_stand,tag=baba.object,tag=!left,scores={sprite=60823}] positioned ~ ~ ~-1 if entity @e[type=armor_stand,tag=baba.object,scores={sprite=26837},distance=..0.1,limit=1] run tag @s add left

scoreboard players set connect baba 0
execute positioned ~ ~ ~1 as @e[type=armor_stand,tag=baba.object,tag=connector,distance=..0.1] if score @s sprite = sprite baba run scoreboard players set connect baba 1
execute if score connect baba matches 1 run tag @s add right
execute unless block ~ ~-1 ~1 black_concrete run tag @s add right
execute if entity @s[type=armor_stand,tag=baba.object,tag=!right,scores={sprite=60823}] positioned ~ ~ ~1 if entity @e[type=armor_stand,tag=baba.object,scores={sprite=26837},distance=..0.1,limit=1] run tag @s add right
