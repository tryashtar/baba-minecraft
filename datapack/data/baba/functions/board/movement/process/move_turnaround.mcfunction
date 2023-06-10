execute as @e[type=item_display,tag=baba.object,tag=do_turnaround,tag=!move_done] at @s run function baba:board/movement/attempt/move
execute store success score any_moved baba run tag @e[type=item_display,tag=baba.object,tag=do_turnaround,tag=has_moved,tag=!move_done] add move_done
execute if score any_moved baba matches 1 run function baba:board/movement/process/move_turnaround
