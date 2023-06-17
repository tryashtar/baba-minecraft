tag @s add falling
scoreboard players operation float baba = @s float_level
scoreboard players set open baba 0
scoreboard players set shut baba 0
execute if entity @s[tag=prop.open] run scoreboard players set open baba 1
execute if entity @s[tag=prop.shut] run scoreboard players set shut baba 1
execute if block ~-1 ~-1 ~ #baba:board run function baba:board/interact/fall_loop
tag @e[type=#baba:object,tag=baba.object,tag=blocker] remove blocker
tag @s remove falling
