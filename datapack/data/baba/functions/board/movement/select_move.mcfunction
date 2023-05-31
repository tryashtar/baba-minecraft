tag @s remove can_move
# 'select' objects can move onto 'line' and anything with level metadata
execute if entity @e[type=item_display,tag=baba.object,scores={sprite=243140},distance=..0.1,limit=1] run tag @s add can_move
execute if entity @s[tag=!can_move] if entity @e[type=item_display,tag=baba.object,distance=..0.1,nbt={item:{tag:{level_data:{}}}},limit=1] run tag @s add can_move
execute if entity @s[tag=can_move] run function baba:board/movement/move_here
