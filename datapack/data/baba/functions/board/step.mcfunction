execute if score direction baba matches 1.. run function baba:board/movement/process/you
function baba:board/movement/process/move
function baba:board/movement/process/shift
execute as @e[type=marker,tag=baba.tile] at @s run function baba:board/step_tile
function baba:text/update_text
