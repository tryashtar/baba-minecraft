execute as @e[type=marker,tag=baba.space,dx=40,dy=1,dz=0.5] at @s as @e[type=marker,tag=baba.object,tag=!drawn,nbt=!{data:{properties:["hide"]}},distance=..0.1] run function baba:display/try_add_object
scoreboard players add column baba 1
data modify storage baba:main text append value '{"translate":"baba.empty_tile"}'
