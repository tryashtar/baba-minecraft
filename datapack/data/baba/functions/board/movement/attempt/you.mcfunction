tag @s add self
execute store result entity @s data.facing int 1 run scoreboard players get direction baba
execute if score direction baba matches 1 rotated 270 0 run function baba:board/movement/try_move
execute if score direction baba matches 2 rotated 90 0 run function baba:board/movement/try_move
execute if score direction baba matches 3 rotated 180 0 run function baba:board/movement/try_move
execute if score direction baba matches 4 rotated 0 0 jukebox run function baba:board/movement/try_move
tag @s remove self
