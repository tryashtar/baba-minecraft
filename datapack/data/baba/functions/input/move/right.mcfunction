tp @s -1.5 2 2.5 -90 90
scoreboard players set direction baba 4
execute if score move_cooldown baba matches ..0 run function baba:board/rules/update
execute if score move_cooldown baba matches ..0 run function baba:board/step
execute if score move_cooldown baba matches ..0 run scoreboard players set move_cooldown baba 2
