tag @s remove can_move
execute if entity @e[type=armor_stand,tag=baba.object,scores={sprite=60823},distance=..0.1,limit=1] run tag @s add can_move
execute if entity @s[tag=!can_move] if entity @e[type=armor_stand,tag=baba.object,scores={sprite=26837},distance=..0.1,limit=1] run tag @s add can_move
execute if entity @s[tag=!can_move] if entity @e[type=armor_stand,tag=baba.object,distance=..0.1,nbt={HandItems:[{tag:{properties:["you"]}}]},limit=1] run tag @s add can_move
execute if entity @s[tag=can_move] run function baba:board/movement/move_here
