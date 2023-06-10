execute if score direction baba matches 1 rotated 270 0 positioned ^ ^ ^1 run function baba:board/movement/select_move
execute if score direction baba matches 2 rotated 90 0 positioned ^ ^ ^1 run function baba:board/movement/select_move
execute if score direction baba matches 3 rotated 180 0 positioned ^ ^ ^1 run function baba:board/movement/select_move
execute if score direction baba matches 4 rotated 0 0 positioned ^ ^ ^1 run function baba:board/movement/select_move
scoreboard players operation @s facing = direction baba
tag @s remove can_move
tag @s add dirty

function baba:progress/show_name
