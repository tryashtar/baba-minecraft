execute as @e[type=marker,tag=baba.tile,nbt={data:{properties:["move"]}},tag=!move_handled] at @s run function baba:board/movement/attempt/move
execute store success score any_moved baba run tag @e[type=marker,tag=baba.tile,tag=move_success,tag=!move_handled,nbt={data:{properties:["move"]}}] add move_handled
execute if score any_moved baba matches 1 run function baba:board/movement/process/move
