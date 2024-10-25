# move everything that was marked as able to move at once
execute as @e[type=#baba:object,tag=baba.object,tag=active,tag=destroy,x=63.0,y=67.0,z=-168.0,dx=24,dy=14,dz=1] at @s run function baba:board/interact/weak_destroy
scoreboard players add @e[type=#baba:object,tag=baba.object,tag=active,tag=can_move,x=63.0,y=67.0,z=-168.0,dx=24,dy=14,dz=1] walk 1
scoreboard players set @e[type=#baba:object,tag=baba.object,tag=active,tag=can_move,scores={walk=4..},x=63.0,y=67.0,z=-168.0,dx=24,dy=14,dz=1] walk 0
execute as @e[type=#baba:object,tag=baba.object,tag=active,tag=can_move,x=63.0,y=67.0,z=-168.0,dx=24,dy=14,dz=1] positioned as @s positioned ^ ^ ^1 run function baba:board/movement/move_here
scoreboard players operation @e[type=#baba:object,tag=baba.object,tag=active,tag=can_move,x=63.0,y=67.0,z=-168.0,dx=24,dy=14,dz=1] facing = @s facing
tag @e[type=#baba:object,tag=baba.object,tag=active,tag=can_move,x=63.0,y=67.0,z=-168.0,dx=24,dy=14,dz=1] add has_moved
tag @e[type=#baba:object,tag=baba.object,tag=active,tag=can_move,x=63.0,y=67.0,z=-168.0,dx=24,dy=14,dz=1] add dirty
tag @e[type=#baba:object,tag=baba.object,tag=active,tag=can_move,x=63.0,y=67.0,z=-168.0,dx=24,dy=14,dz=1] remove can_move
tag @e[type=#baba:object,tag=baba.object,tag=active,tag=swapped,x=63.0,y=67.0,z=-168.0,dx=24,dy=14,dz=1] remove swapped
