tag @s add dirty
scoreboard players operation @s facing = direction baba
execute if entity @s[tag=!has_moved,scores={facing=1}] rotated 0 -90 run return run function baba:board/movement/try_move
execute if entity @s[tag=!has_moved,scores={facing=2}] rotated 0 90 run return run function baba:board/movement/try_move
execute if entity @s[tag=!has_moved,scores={facing=3}] rotated 90 0 run return run function baba:board/movement/try_move
execute if entity @s[tag=!has_moved,scores={facing=4}] rotated -90 0 run return run function baba:board/movement/try_move
