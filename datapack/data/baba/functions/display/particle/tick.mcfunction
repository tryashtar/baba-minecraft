scoreboard players remove @s life 1
kill @s[scores={life=..0}]

execute if entity @s[tag=win_particle,scores={life=10}] run data modify entity @s item.tag.CustomModelData set value 2
execute if entity @s[tag=win_particle,scores={life=8}] run data modify entity @s item.tag.CustomModelData set value 3
execute if entity @s[tag=win_particle,scores={life=6}] run data modify entity @s item.tag.CustomModelData set value 4
execute if entity @s[tag=win_particle,scores={life=4}] run data modify entity @s item.tag.CustomModelData set value 5
execute if entity @s[tag=win_particle,scores={life=2}] run data modify entity @s item.tag.CustomModelData set value 6
