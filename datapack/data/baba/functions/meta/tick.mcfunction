execute if score tick_success baba matches 0 run tellraw @a {"text":"Previous tick failed!","color":"red"}
scoreboard players set tick_success baba 0

function baba:display/tick
execute as @a[scores={win=1..}] run function baba:progress/win
execute as @a at @s run function baba:input/check

scoreboard players set tick_success baba 1
