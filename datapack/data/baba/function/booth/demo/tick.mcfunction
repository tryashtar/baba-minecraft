execute as @e[type=marker,tag=baba.board,distance=..40,limit=1] at @s run function baba:display/tick
scoreboard players set has_rider baba 0
execute on passengers at @s run function baba:booth/demo/player_tick
execute unless score has_rider baba matches 1 run function baba:booth/demo/dismounted
