execute as @e[type=marker,tag=baba.object,dx=0.5,dy=1,dz=40,tag=connector] at @s align xyz run tp @s ~0.5 ~ ~0.498
execute as @e[type=marker,tag=baba.object,dx=0.5,dy=1,dz=40,nbt={data:{sprite:"tile"}}] at @s align xyz run tp @s ~0.5 ~ ~0.499
execute as @e[type=marker,tag=baba.object,dx=0.5,dy=1,dz=40,nbt={data:{sprite:"baba"}}] at @s align xyz run tp @s ~0.5 ~ ~0.501
execute as @e[type=marker,tag=baba.object,tag=is_text,dx=0.5,dy=1,dz=40] at @s align xyz run tp @s ~0.5 ~ ~0.502
execute as @e[type=marker,tag=baba.object,dx=0.5,dy=1,dz=40,nbt={data:{properties:["select"]}}] at @s align xyz run tp @s ~0.5 ~ ~0.503
execute as @e[type=marker,tag=baba.space,dx=0.5,dy=1,dz=40,sort=nearest] at @s run function baba:display/add_objects
scoreboard players add row baba 1
execute if score row baba < level_height baba as @e[type=marker,tag=baba.space,dx=0.5,dy=1,dz=40] run data modify storage baba:main text append value '{"translate":"baba.overlay"}'
