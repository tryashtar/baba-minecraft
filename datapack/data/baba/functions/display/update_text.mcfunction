data modify storage baba:main text set value ['""']
execute if score level_background baba matches 1 run data modify storage baba:main text set value ['[{"translate":"baba.background.island"},{"translate":"baba.overlay"}]']
execute if score level_background baba matches 2 run data modify storage baba:main text set value ['[{"translate":"baba.background.flower"},{"translate":"baba.overlay"}]']
scoreboard players set row baba 0
execute positioned 0.0 0.0 0.0 as @e[type=marker,tag=baba.space,dx=40,dy=1,dz=0.5,sort=furthest] at @s positioned ~-0.5 ~-0.5 ~-0.5 run function baba:display/add_row
