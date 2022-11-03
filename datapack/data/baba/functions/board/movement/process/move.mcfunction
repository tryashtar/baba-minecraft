execute as @e[type=armor_stand,tag=baba.object,tag=!move_done,nbt={HandItems:[{tag:{properties:["move"]}}]},nbt=!{HandItems:[{tag:{properties:["sleep"]}}]}] at @s run function baba:board/movement/attempt/move
execute store success score any_moved baba run tag @e[type=armor_stand,tag=baba.object,tag=move_success,tag=!move_done,nbt={HandItems:[{tag:{properties:["move"]}}]},nbt=!{HandItems:[{tag:{properties:["sleep"]}}]}] add move_done
execute if score any_moved baba matches 1 run function baba:board/movement/process/move
