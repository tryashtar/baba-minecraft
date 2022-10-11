data modify storage baba:main text set value ['""']
function baba:display/add_border
scoreboard players set row baba 0
execute positioned 0.0 0.0 0.0 as @e[type=marker,tag=baba.space,dx=40,dy=1,dz=0.5] at @s positioned ~-0.5 ~-0.5 ~-0.5 run function baba:display/add_background
execute if score level_background baba matches 1 run data modify storage baba:main text append value '{"translate":"baba.background.island"}'
execute if score level_background baba matches 2 run data modify storage baba:main text append value '{"translate":"baba.background.flower"}'
tag @e[type=marker,tag=baba.object,tag=drawn] remove drawn
tag @e[type=marker,tag=baba.object,nbt={data:{properties:["hide"]}}] add drawn
scoreboard players add @e[type=marker,tag=baba.object,nbt={data:{properties:["float"]}}] z_layer 100
scoreboard players set column baba 0
execute positioned 0.0 0.0 0.0 as @e[type=marker,tag=baba.space,dx=0.5,dy=1,dz=40,sort=nearest] at @s positioned ~-0.5 ~-0.5 ~-0.5 run function baba:display/add_column
scoreboard players remove @e[type=marker,tag=baba.object,scores={z_layer=100..}] z_layer 100
