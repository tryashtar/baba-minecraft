execute as @e[type=#baba:object,tag=baba.object,tag=active,tag=prop.move,tag=!prop.sleep,tag=!move_done] at @s run function baba:board/movement/attempt/move
execute store success score any_moved baba run tag @e[type=#baba:object,tag=baba.object,tag=active,tag=prop.move,tag=!prop.sleep,tag=has_moved,tag=!move_done] add move_done
execute if score any_moved baba matches 1 run function baba:board/movement/batch/move
