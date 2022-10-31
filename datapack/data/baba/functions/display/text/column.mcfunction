execute as @e[type=marker,tag=baba.space,dx=40] at @s as @e[type=armor_stand,tag=baba.object,tag=!drawn,distance=..0.1] run function baba:display/text/try_object
scoreboard players add column baba 1
data modify storage baba:main text append value '{"translate":"baba.empty_tile"}'
