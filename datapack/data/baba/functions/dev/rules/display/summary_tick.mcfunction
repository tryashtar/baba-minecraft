team join red @e[type=marker,tag=baba.rule,scores={text_disabled=1..}]
team leave @e[type=marker,tag=baba.rule,scores={text_disabled=0}]
data modify entity @s text set value '{"selector":"@e[type=marker,tag=baba.rule]","separator":"\\n"}'
execute store result entity @s Pos[0] double 1 run scoreboard players get level_height baba
