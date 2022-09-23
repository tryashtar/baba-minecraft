execute as @e[type=marker,tag=baba.move] at @s run function baba:board/movement/attempt/move
execute store success score any_moved baba run kill @e[type=marker,tag=baba.move,tag=move_success]
execute if score any_moved baba matches 1 run function baba:board/movement/process/move
