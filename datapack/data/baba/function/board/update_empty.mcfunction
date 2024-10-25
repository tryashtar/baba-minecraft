execute as @e[type=marker,tag=baba.object,tag=active,tag=empty,x=63.0,y=67.0,z=-168.0,dx=24,dy=14,dz=1] at @s store result score @s life if entity @e[type=#baba:object,tag=baba.object,tag=active,distance=..0.1,limit=2]
kill @e[type=marker,tag=baba.object,tag=active,tag=empty,scores={life=2..},x=63.0,y=67.0,z=-168.0,dx=24,dy=14,dz=1]
execute at @e[type=marker,tag=baba.space,tag=active] unless entity @e[type=#baba:object,tag=baba.object,tag=active,distance=..0.1,limit=1] run summon marker ~ ~ ~ {Tags:["baba","baba.object","active","not_all","empty","spawn","assign"]}
scoreboard players set @e[type=marker,tag=baba.object,tag=empty,tag=spawn,x=63.0,y=67.0,z=-168.0,dx=24,dy=14,dz=1] sprite 2925313
execute as @e[type=marker,tag=baba.object,tag=empty,tag=spawn,x=63.0,y=67.0,z=-168.0,dx=24,dy=14,dz=1] store result score @s facing run random value 1..4
tag @e[type=marker,tag=baba.object,tag=empty,tag=spawn,x=63.0,y=67.0,z=-168.0,dx=24,dy=14,dz=1] remove spawn
