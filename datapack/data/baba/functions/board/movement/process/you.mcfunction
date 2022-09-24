execute as @e[type=marker,tag=baba.tile,nbt={data:{properties:["you"]}},tag=!move_done] at @s run function baba:board/movement/attempt/you
execute store success score any_moved baba run tag @e[type=marker,tag=baba.tile,tag=move_success,tag=!move_done,nbt={data:{properties:["you"]}}] add move_done
execute if score any_moved baba matches 1 run function baba:board/movement/process/you
