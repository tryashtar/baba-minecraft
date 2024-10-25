# things without 'swap' trade places with things with 'swap' and vice versa
tag @e[type=#baba:object,tag=baba.object,tag=active,tag=swap,x=63.0,y=67.0,z=-168.0,dx=24,dy=14,dz=1] remove swap
execute if entity @s[tag=!prop.swap,tag=!teleported,tag=!swap,tag=!falling] run tag @e[type=#baba:object,tag=baba.object,tag=active,tag=prop.swap,distance=..0.1] add swap
execute if entity @s[tag=prop.swap,tag=!teleported,tag=!swap,tag=!falling] run tag @e[type=#baba:object,tag=baba.object,tag=active,distance=..0.1] add swap
execute at @s as @e[type=#baba:object,tag=baba.object,tag=active,tag=swap,x=63.0,y=67.0,z=-168.0,dx=24,dy=14,dz=1] run function baba:board/movement/quick_move_here

function baba:board/movement/quick_move_here
