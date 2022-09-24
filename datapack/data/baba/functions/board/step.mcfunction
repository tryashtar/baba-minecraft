scoreboard players set facing baba 0
execute if score direction baba matches 1.. run function baba:board/movement/process/you
tag @e[type=marker,tag=baba.tile,tag=move_handled] remove move_handled
function baba:board/movement/process/move
execute as @e[type=marker,tag=baba.tile,tag=!move_handled,nbt={data:{properties:["move"]}}] at @s run function baba:board/movement/attempt/move_turnaround
tag @e[type=marker,tag=baba.tile,tag=move_handled] remove move_handled
function baba:board/movement/process/shift
tag @e[type=marker,tag=baba.tile,tag=move_handled] remove move_handled
tag @e[type=marker,tag=baba.tile,tag=move_done] remove move_done
execute as @e[type=marker,tag=baba.tile] at @s run function baba:board/step_tile
function baba:display/update_text
