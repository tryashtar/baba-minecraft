tag @s remove can_move
scoreboard players add opened baba 1
execute at @s run function baba:board/interact/destroy
execute if entity @s[tag=prop.open] positioned ^ ^ ^1 as @e[type=item_display,tag=baba.object,tag=prop.shut,distance=..0.1,limit=1] at @s run function baba:board/interact/destroy
execute if entity @s[tag=prop.shut] positioned ^ ^ ^1 as @e[type=item_display,tag=baba.object,tag=prop.open,distance=..0.1,limit=1] at @s run function baba:board/interact/destroy
