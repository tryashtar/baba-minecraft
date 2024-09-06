summon text_display ~ ~ ~ {UUID:[I;0,0,0,1],alignment:"center"}
data modify storage baba:main text set value []
execute as @e[type=marker,tag=baba.rule] run function baba:dev/rules/display/summary_append
data modify entity @s text set value '{"storage":"baba:main","nbt":"text[]","interpret":true,"separator":""}'
execute store result entity @s Pos[0] double 1 run scoreboard players get level_height baba
kill 0-0-0-0-1
