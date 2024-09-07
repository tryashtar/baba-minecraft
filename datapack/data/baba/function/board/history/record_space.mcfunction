# copy data and scores of all objects on this tile
# if it's the same as the last time record was called, just increment a count
# if it's different, append it to the list with a count
data modify storage baba:main objects set value []
execute as @e[type=item_display,tag=baba.object,tag=active,distance=..0.1] run function baba:board/history/add
# compare using the copy-and-success trick
# since we need an exact match of all nested data, I don't think macros can do this any better
data modify storage baba:main previous set value 1b
data modify storage baba:main previous set from entity @s data.history[-1].objects
execute store success score different baba run data modify storage baba:main previous set from storage baba:main objects
execute if score different baba matches 0 run scoreboard players add @s repeats 1
execute if score different baba matches 1 run function baba:board/history/changed
execute if data storage baba:main {previous:1b} run function baba:board/history/changed
