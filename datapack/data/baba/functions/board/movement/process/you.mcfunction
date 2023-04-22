execute as @e[type=item_display,tag=baba.object,tag=!move_done,nbt={item:{tag:{properties:["you"]}}},nbt=!{item:{tag:{properties:["sleep"]}}}] at @s run function baba:board/movement/attempt/you
execute store success score any_moved baba run tag @e[type=item_display,tag=baba.object,tag=move_success,tag=!move_done,nbt={item:{tag:{properties:["you"]}}},nbt=!{item:{tag:{properties:["sleep"]}}}] add move_done
execute if score any_moved baba matches 1 run function baba:board/movement/process/you
