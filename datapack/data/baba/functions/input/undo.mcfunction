tp @s -1.5 2 2.5 -90 90
execute if score move_cooldown baba matches ..0 as @e[type=marker,tag=baba.space] at @s run function baba:board/history/undo
execute if score move_cooldown baba matches ..0 run function baba:display/update_text
execute if score move_cooldown baba matches ..0 run scoreboard players set move_cooldown baba 2
