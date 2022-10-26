execute as @e[type=marker,tag=baba.object,tag=!move_done,nbt={data:{properties:["you"]}},nbt=!{data:{properties:["sleep"]}}] at @s run function baba:board/movement/attempt/you
execute store success score any_moved baba run tag @e[type=marker,tag=baba.object,tag=move_success,tag=!move_done,nbt={data:{properties:["you"]}},nbt=!{data:{properties:["sleep"]}}] add move_done
execute if score any_moved baba matches 1 run function baba:board/movement/process/you
