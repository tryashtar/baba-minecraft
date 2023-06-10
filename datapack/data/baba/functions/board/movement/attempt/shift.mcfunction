tag @s add self
scoreboard players operation float baba = @s float_level
execute if entity @s[scores={facing=1}] as @e[type=item_display,tag=baba.object,tag=!self,tag=!has_moved,distance=..0.1] if score @s float_level = float baba rotated 270 0 run function baba:board/movement/check_move
execute if entity @s[scores={facing=2}] as @e[type=item_display,tag=baba.object,tag=!self,tag=!has_moved,distance=..0.1] if score @s float_level = float baba rotated 90 0 run function baba:board/movement/check_move
execute if entity @s[scores={facing=3}] as @e[type=item_display,tag=baba.object,tag=!self,tag=!has_moved,distance=..0.1] if score @s float_level = float baba rotated 180 0 run function baba:board/movement/check_move
execute if entity @s[scores={facing=4}] as @e[type=item_display,tag=baba.object,tag=!self,tag=!has_moved,distance=..0.1] if score @s float_level = float baba rotated 0 0 run function baba:board/movement/check_move
execute if entity @s[scores={facing=1}] rotated 270 0 run function baba:board/movement/do_move
execute if entity @s[scores={facing=2}] rotated 90 0 run function baba:board/movement/do_move
execute if entity @s[scores={facing=3}] rotated 180 0 run function baba:board/movement/do_move
execute if entity @s[scores={facing=4}] rotated 0 0 run function baba:board/movement/do_move
tag @s remove self
