scoreboard players remove @e[type=marker,tag=baba.space] repeats 1
execute as @e[type=marker,tag=baba.space,scores={repeats=0}] at @s run function baba:board/history/pop
execute if score empty baba matches 1 run function baba:board/update_empty
tag @e[type=item_display,tag=baba.object,scores={sprite=397973}] add reparse
function baba:board/rules/update
function baba:board/rules/assign
function baba:display/update
