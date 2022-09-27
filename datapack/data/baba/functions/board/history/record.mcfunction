data modify storage baba:main objects set value []
execute as @e[type=marker,tag=baba.object,distance=..0.1] run function baba:board/history/add
execute store success score different baba run data modify entity @s data.recent set from storage baba:main objects
execute if score different baba matches 1 run data modify entity @s data.history append from storage baba:main objects
execute if score different baba matches 0 if data entity @s data.history[-1][0].unchanged store result score unchanged baba run data get entity @s data.history[-1][0].unchanged
execute if score different baba matches 0 if data entity @s data.history[-1][0].unchanged store result entity @s data.history[-1][0].unchanged int 1 run scoreboard players add unchanged baba 1
execute if score different baba matches 0 unless data entity @s data.history[-1][0].unchanged run data modify entity @s data.history append value [{unchanged:1}]
