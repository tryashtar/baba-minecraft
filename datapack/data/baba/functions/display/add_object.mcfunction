data modify storage baba:main after_text set value []
execute store result score row baba run data get entity @s Pos[0]
scoreboard players operation row baba -= level_height baba
execute store result score draw_column baba run data get entity @s Pos[2]
execute if score draw_column baba > column baba run function baba:display/add_spaces
execute if score draw_column baba < column baba run function baba:display/remove_spaces
execute if score row baba matches -1 run function baba:display/add_object/row0
execute if score row baba matches -2 run function baba:display/add_object/row1
execute if score row baba matches -3 run function baba:display/add_object/row2
execute if score row baba matches -4 run function baba:display/add_object/row3
execute if score row baba matches -5 run function baba:display/add_object/row4
execute if score row baba matches -6 run function baba:display/add_object/row5
execute if score row baba matches -7 run function baba:display/add_object/row6
execute if score row baba matches -8 run function baba:display/add_object/row7
execute if score row baba matches -9 run function baba:display/add_object/row8
execute if score row baba matches -10 run function baba:display/add_object/row9
execute if score row baba matches -11 run function baba:display/add_object/row10
execute if score row baba matches -12 run function baba:display/add_object/row11
execute if score row baba matches -13 run function baba:display/add_object/row12
execute if score row baba matches -14 run function baba:display/add_object/row13
execute if score row baba matches -15 run function baba:display/add_object/row14
execute if score row baba matches -16 run function baba:display/add_object/row15
execute if score row baba matches -17 run function baba:display/add_object/row16
execute if score row baba matches -18 run function baba:display/add_object/row17
tag @s add drawn
data modify storage baba:main text append from storage baba:main after_text[]
