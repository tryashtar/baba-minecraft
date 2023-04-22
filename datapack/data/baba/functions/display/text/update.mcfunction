data modify storage baba:main text set value ['""']
# get text components for the edge columns (all border) and middle columns (border on top and bottom, floor in middle)
function baba:display/text/background
data modify storage baba:main text append from storage baba:main end_column
execute positioned 0.0 0.5 0.0 as @e[type=marker,tag=baba.space,dz=40] run data modify storage baba:main text append from storage baba:main column
data modify storage baba:main text append from storage baba:main end_column

# move the cursor back to the start and start to draw actual objects, one column at a time
execute positioned 0.0 0.5 0.0 as @e[type=marker,tag=baba.space,dz=40] run data modify storage baba:main text append value '{"translate":"baba.overlay"}'
data modify storage baba:main text append value '{"translate":"baba.overlay"}'
execute if score level_background baba matches 1 run data modify storage baba:main text append value '{"translate":"baba.background.island"}'
execute if score level_background baba matches 2 run data modify storage baba:main text append value '{"translate":"baba.background.flower"}'
tag @e[type=item_display,tag=baba.object,tag=drawn] remove drawn
tag @e[type=item_display,tag=baba.object,nbt={item:{tag:{properties:["hide"]}}}] add drawn
scoreboard players set column baba 0
execute positioned 0.0 0.5 0.0 as @e[type=marker,tag=baba.space,dz=40,sort=nearest] at @s positioned ~-0.5 ~-0.5 ~-0.5 run function baba:display/text/column
