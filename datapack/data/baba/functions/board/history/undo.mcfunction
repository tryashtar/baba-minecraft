scoreboard players remove @e[type=marker,tag=baba.space] repeats 1
execute as @e[type=marker,tag=baba.space,scores={repeats=0}] at @s run function baba:board/history/pop
tag @e[type=item_display,tag=baba.object,scores={sprite=30442}] add reparse
function baba:board/rules/update
function baba:board/rules/assign
scoreboard players add @e[type=item_display,tag=baba.object,scores={float_level=1..}] z_layer 100
function baba:display/update
scoreboard players remove @e[type=item_display,tag=baba.object,scores={z_layer=100..}] z_layer 100
