execute as @e[type=marker,tag=baba.object,tag=destroy] at @s run function baba:board/interact/destroy
scoreboard players add @e[type=marker,tag=baba.object,tag=can_move] walk 1
scoreboard players set @e[type=marker,tag=baba.object,tag=can_move,scores={walk=4..}] walk 0
execute as @e[type=marker,tag=baba.object,tag=can_move] positioned as @s run tp @s ^ ^ ^1
scoreboard players operation @e[type=marker,tag=baba.object,tag=can_move] facing = @s facing
scoreboard players operation @e[type=marker,tag=baba.object,tag=can_move] move_dir = @s facing
scoreboard players set @e[type=marker,tag=baba.object,tag=can_move] move_frame 2
tag @e[type=marker,tag=baba.object,tag=can_move] add move_success
tag @e[type=marker,tag=baba.object,tag=can_move] remove can_move