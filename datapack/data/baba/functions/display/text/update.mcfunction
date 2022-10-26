data modify storage baba:main text set value ['""']
function baba:display/text/background
data modify storage baba:main text append from storage baba:main end_column
execute positioned 0.0 0.0 0.0 as @e[type=marker,tag=baba.space,dx=0.5,dy=1,dz=40] run data modify storage baba:main text append from storage baba:main column
data modify storage baba:main text append from storage baba:main end_column
execute positioned 0.0 0.0 0.0 as @e[type=marker,tag=baba.space,dx=0.5,dy=1,dz=40] run data modify storage baba:main text append value '{"translate":"baba.overlay"}'
data modify storage baba:main text append value '{"translate":"baba.overlay"}'
execute if score level_background baba matches 1 run data modify storage baba:main text append value '{"translate":"baba.background.island"}'
execute if score level_background baba matches 2 run data modify storage baba:main text append value '{"translate":"baba.background.flower"}'
tag @e[type=armor_stand,tag=baba.object,tag=drawn] remove drawn
tag @e[type=armor_stand,tag=baba.object,nbt={HandItems:[{tag:{properties:["hide"]}}]}] add drawn
scoreboard players add @e[type=armor_stand,tag=baba.object,nbt={HandItems:[{tag:{properties:["float"]}}]}] z_layer 100
scoreboard players set column baba 0
execute positioned 0.0 0.0 0.0 as @e[type=marker,tag=baba.space,dx=0.5,dy=1,dz=40,sort=nearest] at @s positioned ~-0.5 ~-0.5 ~-0.5 run function baba:display/text/column
scoreboard players remove @e[type=armor_stand,tag=baba.object,scores={z_layer=100..}] z_layer 100
