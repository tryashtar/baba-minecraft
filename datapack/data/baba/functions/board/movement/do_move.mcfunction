# move everything that was marked as able to move at once
execute as @e[type=#baba:object,tag=baba.object,tag=destroy] at @s run function baba:board/interact/destroy
scoreboard players add @e[type=#baba:object,tag=baba.object,tag=can_move] walk 1
scoreboard players set @e[type=#baba:object,tag=baba.object,tag=can_move,scores={walk=4..}] walk 0
execute as @e[type=#baba:object,tag=baba.object,tag=can_move] positioned as @s positioned ^ ^ ^1 run function baba:board/movement/move_here
scoreboard players operation @e[type=#baba:object,tag=baba.object,tag=can_move] facing = @s facing
tag @e[type=#baba:object,tag=baba.object,tag=can_move] add has_moved
tag @e[type=#baba:object,tag=baba.object,tag=can_move] add dirty
tag @e[type=#baba:object,tag=baba.object,tag=can_move] remove can_move
tag @e[type=#baba:object,tag=baba.object,tag=swapped] remove swapped
