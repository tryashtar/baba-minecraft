scoreboard players set has_rider baba 0
execute if entity @s[tag=!in_menu] on passengers at @s run function baba:booth/demo/player_tick
execute if entity @s[tag=in_menu] on passengers at @s run function baba:booth/demo/menu_tick
execute unless score has_rider baba matches 1 run function baba:booth/demo/dismounted

execute as @e[type=marker,tag=baba.board,distance=..40,limit=1] at @s run function baba:display/tick

# level loading
execute if score load_timer baba matches 1.. run function baba:booth/demo/level_load

# winning
execute if score win baba matches 1.. run function baba:booth/demo/level_win
