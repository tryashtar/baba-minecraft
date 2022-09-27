execute unless data entity @s data.history[-1][0].unchanged run data modify entity @s data.recent set from entity @s data.history[-1]
execute unless data entity @s data.history[-1][0].unchanged run kill @e[type=marker,tag=baba.object,distance=..0.1]
execute if data entity @s data.history[-1][0].unchanged store result score unchanged baba run data get entity @s data.history[-1][0].unchanged
execute if data entity @s data.history[-1][0].unchanged store result entity @s data.history[-1][0].unchanged int 1 run scoreboard players remove unchanged baba 1
execute if score unchanged baba matches 0 if data entity @s data.history[-1][0].unchanged run data remove entity @s data.history[-1]
execute unless data entity @s data.history[-1][0].unchanged run data remove entity @s data.history[-1]
data modify storage baba:main objects set from entity @s data.recent
execute if data storage baba:main objects[0] run function baba:board/history/spawn
