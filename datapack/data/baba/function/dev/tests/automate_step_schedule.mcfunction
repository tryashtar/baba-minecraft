execute as @e[type=marker,tag=baba.board] at @s if data entity @s data.moves[0] run function baba:dev/tests/automate_step
scoreboard players set more baba 0
execute as @e[type=marker,tag=baba.board] if data entity @s data.moves[0] run scoreboard players set more baba 1
execute if score more baba matches 1 run schedule function baba:dev/tests/automate_step_schedule 1t
