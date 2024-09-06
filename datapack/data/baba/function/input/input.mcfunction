data modify storage baba:main input set from entity @s Motion
execute store result score x baba run data get storage baba:main input[0] 10000
execute store result score z baba run data get storage baba:main input[2] 10000

execute if entity @s[tag=hold_up] unless score x baba matches 100.. run function baba:input/release/up
execute if entity @s[tag=hold_down] unless score x baba matches ..-100 run function baba:input/release/down
execute if entity @s[tag=hold_right] unless score z baba matches 100.. run function baba:input/release/right
execute if entity @s[tag=hold_left] unless score z baba matches ..-100 run function baba:input/release/left
execute if entity @s[tag=!hold_up] if score x baba matches 100.. run function baba:input/press/up
execute if entity @s[tag=!hold_down] if score x baba matches ..-100 run function baba:input/press/down
execute if entity @s[tag=!hold_right] if score z baba matches 100.. run function baba:input/press/right
execute if entity @s[tag=!hold_left] if score z baba matches ..-100 run function baba:input/press/left

execute if entity @s[scores={undo=0,wait=0,move_cooldown=0,win=0,facing=1..}] run function baba:input/move
execute if entity @s[scores={undo=0,wait=1..,move_cooldown=0,win=0,facing=0}] run function baba:input/wait
execute if entity @s[scores={undo=1..,win=0}] run function baba:input/undo

scoreboard players remove @s[scores={move_cooldown=1..}] move_cooldown 1
