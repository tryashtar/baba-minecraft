function baba:board/movement/batch/move
execute store success score any_moved baba run scoreboard players remove @e[type=item_display,tag=baba.object,tag=prop.move,tag=!prop.sleep,tag=move_done,scores={life=1..}] life 1
tag @e[type=item_display,tag=baba.object,tag=has_moved] remove has_moved
tag @e[type=item_display,tag=baba.object,tag=prop.move,tag=!prop.sleep,tag=move_done,scores={life=1..}] remove move_done
execute if score any_moved baba matches 1 run function baba:board/movement/process/move
