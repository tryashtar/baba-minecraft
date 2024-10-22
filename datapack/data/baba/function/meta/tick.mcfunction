execute positioned 76 72 -156 if loaded ~ ~ ~ if entity @a[distance=..40,limit=1] run function baba:booth/tick





function baba:dev/tick
execute as @e[type=marker,tag=baba.board] at @s run function baba:display/tick
