# things without 'swap' trade places with things with 'swap' and vice versa
tag @e[type=#baba:object,tag=baba.object,tag=swap] remove swap
execute if entity @s[tag=!prop.swap,tag=!teleported,tag=!swap,tag=!falling] run tag @e[type=#baba:object,tag=baba.object,tag=prop.swap,distance=..0.1] add swap
execute if entity @s[tag=prop.swap,tag=!teleported,tag=!swap,tag=!falling] run tag @e[type=#baba:object,tag=baba.object,distance=..0.1] add swap
execute at @s as @e[type=#baba:object,tag=baba.object,tag=swap] run function baba:board/movement/quick_move_here

function baba:board/movement/quick_move_here
