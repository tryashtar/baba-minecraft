execute as @e[type=marker,tag=baba.you] at @s run function baba:board/movement/attempt/you
execute store success score any_moved baba run kill @e[type=marker,tag=baba.you,tag=move_success]
execute if score any_moved baba matches 1 run function baba:board/movement/process/you
