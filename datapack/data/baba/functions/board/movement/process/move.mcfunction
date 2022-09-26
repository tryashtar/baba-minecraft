execute as @e[type=marker,tag=baba.object,nbt={data:{properties:["move"]}},tag=!move_done] at @s run function baba:board/movement/attempt/move
execute store success score any_moved baba run tag @e[type=marker,tag=baba.object,tag=move_success,tag=!move_done,nbt={data:{properties:["move"]}}] add move_done
execute if score any_moved baba matches 1 run function baba:board/movement/process/move
