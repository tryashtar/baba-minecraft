execute if score direction baba matches 1.. run function baba:board/movement/process/you
tag @e[type=marker,tag=baba.tile,tag=move_handled] remove move_handled
function baba:board/movement/process/move
tag @e[type=marker,tag=baba.tile,tag=move_handled] remove move_handled
function baba:board/movement/process/shift
tag @e[type=marker,tag=baba.tile,tag=move_handled] remove move_handled
execute as @e[type=marker,tag=baba.tile] at @s run function baba:board/step_tile
function baba:display/update_text
