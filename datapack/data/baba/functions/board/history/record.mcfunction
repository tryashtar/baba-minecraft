data modify storage baba:main objects set value []
execute as @e[type=armor_stand,tag=baba.object,distance=..0.1] run function baba:board/history/add
data modify storage baba:main previous set value 1b
data modify storage baba:main previous set from entity @s data.history[-1].objects
execute store success score different baba run data modify storage baba:main previous set from storage baba:main objects
execute if score different baba matches 0 run scoreboard players add @s repeats 1
execute if score different baba matches 1 run function baba:board/history/changed
execute if data storage baba:main {previous:1b} run function baba:board/history/changed
