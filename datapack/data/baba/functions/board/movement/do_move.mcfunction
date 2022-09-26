scoreboard players set push_success baba 1
scoreboard players add @s walk 1
scoreboard players set @s[scores={walk=4..}] walk 0
tp @s ^ ^ ^1
execute if score facing baba matches 1.. run scoreboard players operation @s facing = facing baba
