data modify storage baba:main text set value ['""']
execute if score level_background baba matches 1 run data modify storage baba:main text set value ['[{"translate":"baba.island"},{"translate":"baba.overlay"}]']
scoreboard players operation height baba = level_height baba
scoreboard players set row baba 0
execute if score height baba matches 1.. positioned 0.0 0.0 0.0 run function baba:display/from_top
