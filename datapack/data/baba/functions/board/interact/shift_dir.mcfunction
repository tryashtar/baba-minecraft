scoreboard players operation float baba = @s float_level
scoreboard players operation facing baba = @s facing
execute as @e[type=#baba:object,tag=baba.object,distance=..0.1] if score @s float_level = float baba run scoreboard players operation @s facing = facing baba
execute as @e[type=#baba:object,tag=baba.object,distance=..0.1] if score @s float_level = float baba run tag @s add dirty
