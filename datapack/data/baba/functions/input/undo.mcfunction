scoreboard players set @s drop 0
item replace entity @s weapon.mainhand with diamond
kill @e[type=item]
execute if score move_cooldown baba matches ..0 as @e[type=marker,tag=baba.space] at @s run function baba:board/history/undo
execute if score move_cooldown baba matches ..0 run function baba:display/update
execute if score move_cooldown baba matches ..0 run scoreboard players set move_cooldown baba 2
