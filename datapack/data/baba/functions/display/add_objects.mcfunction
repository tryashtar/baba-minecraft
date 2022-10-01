execute if score level_background baba matches 1.. run data modify storage baba:main text append value '{"translate":"baba.empty_tile"}'
execute if score level_background baba matches 0 if score row baba matches 0 run data modify storage baba:main text append value '{"translate":"baba.level_border.row0","color":"#080808"}'
execute if score row baba matches 0 positioned ~ ~ ~-0.05 as @e[type=marker,tag=baba.object,distance=..0.1,nbt=!{data:{properties:["hide"]}},sort=nearest] run function baba:display/add_object/row0
execute if score level_background baba matches 0 if score row baba matches 1 run data modify storage baba:main text append value '{"translate":"baba.level_border.row1","color":"#080808"}'
execute if score row baba matches 1 positioned ~ ~ ~-0.05 as @e[type=marker,tag=baba.object,distance=..0.1,nbt=!{data:{properties:["hide"]}},sort=nearest] run function baba:display/add_object/row1
execute if score level_background baba matches 0 if score row baba matches 2 run data modify storage baba:main text append value '{"translate":"baba.level_border.row2","color":"#080808"}'
execute if score row baba matches 2 positioned ~ ~ ~-0.05 as @e[type=marker,tag=baba.object,distance=..0.1,nbt=!{data:{properties:["hide"]}},sort=nearest] run function baba:display/add_object/row2
execute if score level_background baba matches 0 if score row baba matches 3 run data modify storage baba:main text append value '{"translate":"baba.level_border.row3","color":"#080808"}'
execute if score row baba matches 3 positioned ~ ~ ~-0.05 as @e[type=marker,tag=baba.object,distance=..0.1,nbt=!{data:{properties:["hide"]}},sort=nearest] run function baba:display/add_object/row3
execute if score level_background baba matches 0 if score row baba matches 4 run data modify storage baba:main text append value '{"translate":"baba.level_border.row4","color":"#080808"}'
execute if score row baba matches 4 positioned ~ ~ ~-0.05 as @e[type=marker,tag=baba.object,distance=..0.1,nbt=!{data:{properties:["hide"]}},sort=nearest] run function baba:display/add_object/row4
execute if score level_background baba matches 0 if score row baba matches 5 run data modify storage baba:main text append value '{"translate":"baba.level_border.row5","color":"#080808"}'
execute if score row baba matches 5 positioned ~ ~ ~-0.05 as @e[type=marker,tag=baba.object,distance=..0.1,nbt=!{data:{properties:["hide"]}},sort=nearest] run function baba:display/add_object/row5
execute if score level_background baba matches 0 if score row baba matches 6 run data modify storage baba:main text append value '{"translate":"baba.level_border.row6","color":"#080808"}'
execute if score row baba matches 6 positioned ~ ~ ~-0.05 as @e[type=marker,tag=baba.object,distance=..0.1,nbt=!{data:{properties:["hide"]}},sort=nearest] run function baba:display/add_object/row6
execute if score level_background baba matches 0 if score row baba matches 7 run data modify storage baba:main text append value '{"translate":"baba.level_border.row7","color":"#080808"}'
execute if score row baba matches 7 positioned ~ ~ ~-0.05 as @e[type=marker,tag=baba.object,distance=..0.1,nbt=!{data:{properties:["hide"]}},sort=nearest] run function baba:display/add_object/row7
execute if score level_background baba matches 0 if score row baba matches 8 run data modify storage baba:main text append value '{"translate":"baba.level_border.row8","color":"#080808"}'
execute if score row baba matches 8 positioned ~ ~ ~-0.05 as @e[type=marker,tag=baba.object,distance=..0.1,nbt=!{data:{properties:["hide"]}},sort=nearest] run function baba:display/add_object/row8
execute if score level_background baba matches 0 if score row baba matches 9 run data modify storage baba:main text append value '{"translate":"baba.level_border.row9","color":"#080808"}'
execute if score row baba matches 9 positioned ~ ~ ~-0.05 as @e[type=marker,tag=baba.object,distance=..0.1,nbt=!{data:{properties:["hide"]}},sort=nearest] run function baba:display/add_object/row9
execute if score level_background baba matches 0 if score row baba matches 10 run data modify storage baba:main text append value '{"translate":"baba.level_border.row10","color":"#080808"}'
execute if score row baba matches 10 positioned ~ ~ ~-0.05 as @e[type=marker,tag=baba.object,distance=..0.1,nbt=!{data:{properties:["hide"]}},sort=nearest] run function baba:display/add_object/row10
execute if score level_background baba matches 0 if score row baba matches 11 run data modify storage baba:main text append value '{"translate":"baba.level_border.row11","color":"#080808"}'
execute if score row baba matches 11 positioned ~ ~ ~-0.05 as @e[type=marker,tag=baba.object,distance=..0.1,nbt=!{data:{properties:["hide"]}},sort=nearest] run function baba:display/add_object/row11
execute if score level_background baba matches 0 if score row baba matches 12 run data modify storage baba:main text append value '{"translate":"baba.level_border.row12","color":"#080808"}'
execute if score row baba matches 12 positioned ~ ~ ~-0.05 as @e[type=marker,tag=baba.object,distance=..0.1,nbt=!{data:{properties:["hide"]}},sort=nearest] run function baba:display/add_object/row12
execute if score level_background baba matches 0 if score row baba matches 13 run data modify storage baba:main text append value '{"translate":"baba.level_border.row13","color":"#080808"}'
execute if score row baba matches 13 positioned ~ ~ ~-0.05 as @e[type=marker,tag=baba.object,distance=..0.1,nbt=!{data:{properties:["hide"]}},sort=nearest] run function baba:display/add_object/row13
execute if score level_background baba matches 0 if score row baba matches 14 run data modify storage baba:main text append value '{"translate":"baba.level_border.row14","color":"#080808"}'
execute if score row baba matches 14 positioned ~ ~ ~-0.05 as @e[type=marker,tag=baba.object,distance=..0.1,nbt=!{data:{properties:["hide"]}},sort=nearest] run function baba:display/add_object/row14
execute if score level_background baba matches 0 if score row baba matches 15 run data modify storage baba:main text append value '{"translate":"baba.level_border.row15","color":"#080808"}'
execute if score row baba matches 15 positioned ~ ~ ~-0.05 as @e[type=marker,tag=baba.object,distance=..0.1,nbt=!{data:{properties:["hide"]}},sort=nearest] run function baba:display/add_object/row15
execute if score level_background baba matches 0 if score row baba matches 16 run data modify storage baba:main text append value '{"translate":"baba.level_border.row16","color":"#080808"}'
execute if score row baba matches 16 positioned ~ ~ ~-0.05 as @e[type=marker,tag=baba.object,distance=..0.1,nbt=!{data:{properties:["hide"]}},sort=nearest] run function baba:display/add_object/row16
execute if score level_background baba matches 0 if score row baba matches 17 run data modify storage baba:main text append value '{"translate":"baba.level_border.row17","color":"#080808"}'
execute if score row baba matches 17 positioned ~ ~ ~-0.05 as @e[type=marker,tag=baba.object,distance=..0.1,nbt=!{data:{properties:["hide"]}},sort=nearest] run function baba:display/add_object/row17
