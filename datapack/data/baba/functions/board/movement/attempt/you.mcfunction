tag @s add dirty
scoreboard players operation @s facing = direction baba
execute if entity @s[tag=!move_success,scores={facing=1}] rotated 270 0 run function baba:board/movement/try_move
execute if entity @s[tag=!move_success,scores={facing=2}] rotated 90 0 run function baba:board/movement/try_move
execute if entity @s[tag=!move_success,scores={facing=3}] rotated 180 0 run function baba:board/movement/try_move
execute if entity @s[tag=!move_success,scores={facing=4}] rotated 0 0 run function baba:board/movement/try_move
