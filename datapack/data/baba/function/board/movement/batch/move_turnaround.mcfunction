execute as @e[type=#baba:object,tag=baba.object,tag=active,tag=do_turnaround,scores={life=1..}] at @s run function baba:board/movement/attempt/move
execute store success score any_moved baba run scoreboard players remove @e[type=#baba:object,tag=baba.object,tag=active,tag=do_turnaround,tag=has_moved,scores={life=1..}] life 1
tag @e[type=#baba:object,tag=baba.object,tag=active,tag=do_turnaround,tag=has_moved,scores={life=1..}] remove has_moved
execute if score any_moved baba matches 1 run function baba:board/movement/batch/move_turnaround
