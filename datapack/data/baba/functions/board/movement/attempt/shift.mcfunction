tag @s add self
execute if entity @s[scores={facing=1}] as @e[type=marker,tag=baba.object,tag=!self,tag=!move_success,distance=..0.1] rotated 270 0 run function baba:board/movement/try_move
execute if entity @s[scores={facing=2}] as @e[type=marker,tag=baba.object,tag=!self,tag=!move_success,distance=..0.1] rotated 90 0 run function baba:board/movement/try_move
execute if entity @s[scores={facing=3}] as @e[type=marker,tag=baba.object,tag=!self,tag=!move_success,distance=..0.1] rotated 180 0 run function baba:board/movement/try_move
execute if entity @s[scores={facing=4}] as @e[type=marker,tag=baba.object,tag=!self,tag=!move_success,distance=..0.1] rotated 0 0 run function baba:board/movement/try_move
tag @s remove self
