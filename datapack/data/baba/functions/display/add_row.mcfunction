execute as @e[type=marker,tag=baba.space,dx=0.5,dy=1,dz=40,sort=nearest] at @s run function baba:display/add_objects
execute as @e[type=marker,tag=baba.space,dx=0.5,dy=1,dz=40] run data modify storage baba:main text append value '{"translate":"baba.overlay"}'
scoreboard players add row baba 1
