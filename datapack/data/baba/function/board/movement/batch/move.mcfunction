execute as @e[type=#baba:object,tag=baba.object,tag=active,tag=prop.move,tag=!prop.sleep,tag=!move_done,x=63.0,y=67.0,z=-168.0,dx=24,dy=14,dz=1] at @s run function baba:board/movement/attempt/move
execute store success score any_moved baba run tag @e[type=#baba:object,tag=baba.object,tag=active,tag=prop.move,tag=!prop.sleep,tag=has_moved,tag=!move_done,x=63.0,y=67.0,z=-168.0,dx=24,dy=14,dz=1] add move_done
execute if score any_moved baba matches 1 run function baba:board/movement/batch/move
