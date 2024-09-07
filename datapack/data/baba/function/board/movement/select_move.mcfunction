tag @s remove can_move
# 'select' objects can move onto 'line' and anything with level metadata
execute if entity @e[type=item_display,tag=baba.object,tag=active,scores={sprite=243140},distance=..0.1,limit=1] run tag @s add can_move
execute if entity @s[tag=!can_move] if entity @e[type=item_display,tag=baba.object,tag=active,predicate=baba:has_level_data,distance=..0.1,limit=1] run tag @s add can_move
execute if entity @s[tag=can_move] run function baba:board/movement/move_here
