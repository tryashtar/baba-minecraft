function baba:board/movement/batch/shift
execute store success score any_moved baba run scoreboard players remove @e[type=#baba:object,tag=baba.object,tag=active,tag=shifting,tag=move_done,scores={life=1..},x=63.0,y=67.0,z=-168.0,dx=24,dy=14,dz=1] life 1
tag @e[type=#baba:object,tag=baba.object,tag=active,tag=has_moved,x=63.0,y=67.0,z=-168.0,dx=24,dy=14,dz=1] remove has_moved
tag @e[type=#baba:object,tag=baba.object,tag=active,tag=shifting,tag=move_done,scores={life=1..},x=63.0,y=67.0,z=-168.0,dx=24,dy=14,dz=1] remove move_done
execute if score any_moved baba matches 1 run function baba:board/movement/process/shift
