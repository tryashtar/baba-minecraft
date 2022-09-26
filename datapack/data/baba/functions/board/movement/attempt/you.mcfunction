scoreboard players operation @s facing = direction baba
execute if score direction baba matches 1 rotated 270 0 run function baba:board/movement/try_move
execute if score direction baba matches 2 rotated 90 0 run function baba:board/movement/try_move
execute if score direction baba matches 3 rotated 180 0 run function baba:board/movement/try_move
execute if score direction baba matches 4 rotated 0 0 run function baba:board/movement/try_move
