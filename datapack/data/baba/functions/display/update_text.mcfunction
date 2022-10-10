data modify storage baba:main text set value ['""']
function baba:display/add_border
scoreboard players set row baba 0
execute positioned 0.0 0.0 0.0 as @e[type=marker,tag=baba.space,dx=40,dy=1,dz=0.5] at @s positioned ~-0.5 ~-0.5 ~-0.5 run function baba:display/add_background
execute if score level_background baba matches 1 run data modify storage baba:main text append value '{"translate":"baba.background.island"}'
execute if score level_background baba matches 2 run data modify storage baba:main text append value '{"translate":"baba.background.flower"}'
scoreboard players set row baba 0
scoreboard players set z_layer baba 1
execute if entity @e[type=marker,tag=baba.object,scores={z_layer=1},limit=1] positioned 0.0 0.0 0.0 as @e[type=marker,tag=baba.space,dx=40,dy=1,dz=0.5,sort=furthest] at @s positioned ~-0.5 ~-0.5 ~-0.5 run function baba:display/add_row
scoreboard players set row baba 0
scoreboard players set z_layer baba 2
execute if entity @e[type=marker,tag=baba.object,scores={z_layer=2},limit=1] positioned 0.0 0.0 0.0 as @e[type=marker,tag=baba.space,dx=40,dy=1,dz=0.5,sort=furthest] at @s positioned ~-0.5 ~-0.5 ~-0.5 run function baba:display/add_row
scoreboard players set row baba 0
scoreboard players set z_layer baba 3
execute if entity @e[type=marker,tag=baba.object,scores={z_layer=3},limit=1] positioned 0.0 0.0 0.0 as @e[type=marker,tag=baba.space,dx=40,dy=1,dz=0.5,sort=furthest] at @s positioned ~-0.5 ~-0.5 ~-0.5 run function baba:display/add_row
scoreboard players set row baba 0
scoreboard players set z_layer baba 4
execute if entity @e[type=marker,tag=baba.object,scores={z_layer=4},limit=1] positioned 0.0 0.0 0.0 as @e[type=marker,tag=baba.space,dx=40,dy=1,dz=0.5,sort=furthest] at @s positioned ~-0.5 ~-0.5 ~-0.5 run function baba:display/add_row
scoreboard players set row baba 0
scoreboard players set z_layer baba 5
execute if entity @e[type=marker,tag=baba.object,scores={z_layer=5},limit=1] positioned 0.0 0.0 0.0 as @e[type=marker,tag=baba.space,dx=40,dy=1,dz=0.5,sort=furthest] at @s positioned ~-0.5 ~-0.5 ~-0.5 run function baba:display/add_row
scoreboard players set row baba 0
scoreboard players set z_layer baba 6
execute if entity @e[type=marker,tag=baba.object,scores={z_layer=6},limit=1] positioned 0.0 0.0 0.0 as @e[type=marker,tag=baba.space,dx=40,dy=1,dz=0.5,sort=furthest] at @s positioned ~-0.5 ~-0.5 ~-0.5 run function baba:display/add_row
scoreboard players set row baba 0
scoreboard players set z_layer baba 7
execute if entity @e[type=marker,tag=baba.object,scores={z_layer=7},limit=1] positioned 0.0 0.0 0.0 as @e[type=marker,tag=baba.space,dx=40,dy=1,dz=0.5,sort=furthest] at @s positioned ~-0.5 ~-0.5 ~-0.5 run function baba:display/add_row
scoreboard players set row baba 0
scoreboard players set z_layer baba 8
execute if entity @e[type=marker,tag=baba.object,scores={z_layer=8},limit=1] positioned 0.0 0.0 0.0 as @e[type=marker,tag=baba.space,dx=40,dy=1,dz=0.5,sort=furthest] at @s positioned ~-0.5 ~-0.5 ~-0.5 run function baba:display/add_row
scoreboard players set row baba 0
scoreboard players set z_layer baba 9
execute if entity @e[type=marker,tag=baba.object,scores={z_layer=9},limit=1] positioned 0.0 0.0 0.0 as @e[type=marker,tag=baba.space,dx=40,dy=1,dz=0.5,sort=furthest] at @s positioned ~-0.5 ~-0.5 ~-0.5 run function baba:display/add_row
scoreboard players set row baba 0
scoreboard players set z_layer baba 10
execute if entity @e[type=marker,tag=baba.object,scores={z_layer=10},limit=1] positioned 0.0 0.0 0.0 as @e[type=marker,tag=baba.space,dx=40,dy=1,dz=0.5,sort=furthest] at @s positioned ~-0.5 ~-0.5 ~-0.5 run function baba:display/add_row
scoreboard players set row baba 0
scoreboard players set z_layer baba 11
execute if entity @e[type=marker,tag=baba.object,scores={z_layer=11},limit=1] positioned 0.0 0.0 0.0 as @e[type=marker,tag=baba.space,dx=40,dy=1,dz=0.5,sort=furthest] at @s positioned ~-0.5 ~-0.5 ~-0.5 run function baba:display/add_row
scoreboard players set row baba 0
scoreboard players set z_layer baba 12
execute if entity @e[type=marker,tag=baba.object,scores={z_layer=12},limit=1] positioned 0.0 0.0 0.0 as @e[type=marker,tag=baba.space,dx=40,dy=1,dz=0.5,sort=furthest] at @s positioned ~-0.5 ~-0.5 ~-0.5 run function baba:display/add_row
scoreboard players set row baba 0
scoreboard players set z_layer baba 13
execute if entity @e[type=marker,tag=baba.object,scores={z_layer=13},limit=1] positioned 0.0 0.0 0.0 as @e[type=marker,tag=baba.space,dx=40,dy=1,dz=0.5,sort=furthest] at @s positioned ~-0.5 ~-0.5 ~-0.5 run function baba:display/add_row
scoreboard players set row baba 0
scoreboard players set z_layer baba 14
execute if entity @e[type=marker,tag=baba.object,scores={z_layer=14},limit=1] positioned 0.0 0.0 0.0 as @e[type=marker,tag=baba.space,dx=40,dy=1,dz=0.5,sort=furthest] at @s positioned ~-0.5 ~-0.5 ~-0.5 run function baba:display/add_row
scoreboard players set row baba 0
scoreboard players set z_layer baba 15
execute if entity @e[type=marker,tag=baba.object,scores={z_layer=15},limit=1] positioned 0.0 0.0 0.0 as @e[type=marker,tag=baba.space,dx=40,dy=1,dz=0.5,sort=furthest] at @s positioned ~-0.5 ~-0.5 ~-0.5 run function baba:display/add_row
scoreboard players set row baba 0
scoreboard players set z_layer baba 16
execute if entity @e[type=marker,tag=baba.object,scores={z_layer=16},limit=1] positioned 0.0 0.0 0.0 as @e[type=marker,tag=baba.space,dx=40,dy=1,dz=0.5,sort=furthest] at @s positioned ~-0.5 ~-0.5 ~-0.5 run function baba:display/add_row
scoreboard players set row baba 0
scoreboard players set z_layer baba 17
execute if entity @e[type=marker,tag=baba.object,scores={z_layer=17},limit=1] positioned 0.0 0.0 0.0 as @e[type=marker,tag=baba.space,dx=40,dy=1,dz=0.5,sort=furthest] at @s positioned ~-0.5 ~-0.5 ~-0.5 run function baba:display/add_row
scoreboard players set row baba 0
scoreboard players set z_layer baba 18
execute if entity @e[type=marker,tag=baba.object,scores={z_layer=18},limit=1] positioned 0.0 0.0 0.0 as @e[type=marker,tag=baba.space,dx=40,dy=1,dz=0.5,sort=furthest] at @s positioned ~-0.5 ~-0.5 ~-0.5 run function baba:display/add_row
scoreboard players set row baba 0
scoreboard players set z_layer baba 19
execute if entity @e[type=marker,tag=baba.object,scores={z_layer=19},limit=1] positioned 0.0 0.0 0.0 as @e[type=marker,tag=baba.space,dx=40,dy=1,dz=0.5,sort=furthest] at @s positioned ~-0.5 ~-0.5 ~-0.5 run function baba:display/add_row
scoreboard players set row baba 0
scoreboard players set z_layer baba 20
execute if entity @e[type=marker,tag=baba.object,scores={z_layer=20},limit=1] positioned 0.0 0.0 0.0 as @e[type=marker,tag=baba.space,dx=40,dy=1,dz=0.5,sort=furthest] at @s positioned ~-0.5 ~-0.5 ~-0.5 run function baba:display/add_row
execute positioned 0.0 0.0 0.0 as @e[type=marker,tag=baba.space,dx=40,dy=1,dz=0.5] run data modify storage baba:main text append value '{"translate":"baba.empty_tile"}'
