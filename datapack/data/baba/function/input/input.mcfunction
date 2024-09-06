execute if entity @s[tag=hold_up,predicate=!baba:player/input_up] run function baba:input/release/up
execute if entity @s[tag=hold_down,predicate=!baba:player/input_down] run function baba:input/release/down
execute if entity @s[tag=hold_right,predicate=!baba:player/input_right] run function baba:input/release/right
execute if entity @s[tag=hold_left,predicate=!baba:player/input_left] run function baba:input/release/left
execute if entity @s[tag=!hold_up,predicate=baba:player/input_up] run function baba:input/press/up
execute if entity @s[tag=!hold_down,predicate=baba:player/input_down] run function baba:input/press/down
execute if entity @s[tag=!hold_right,predicate=baba:player/input_right] run function baba:input/press/right
execute if entity @s[tag=!hold_left,predicate=baba:player/input_left] run function baba:input/press/left

execute if entity @s[scores={undo=0,move_cooldown=0,win=0,facing=1..},predicate=!baba:player/input_wait] run function baba:input/move
execute if entity @s[scores={undo=0,move_cooldown=0,win=0,facing=0},predicate=baba:player/input_wait] run function baba:input/wait
execute if entity @s[scores={undo=1..,win=0}] run function baba:input/undo

scoreboard players remove @s[scores={move_cooldown=1..}] move_cooldown 1
