execute as @e[type=marker,tag=baba.datafixer] at @s unless block ~ ~-1 ~ white_concrete run tellraw @a [{"text":"Packed ","color":"green"},{"score":{"name":"packed","objective":"baba"}}," levels!"]
execute as @e[type=marker,tag=baba.datafixer] at @s unless block ~ ~-1 ~ white_concrete run kill @s
execute as @e[type=marker,tag=baba.datafixer] at @s if block ~ ~-1 ~ white_concrete run function baba:dev/datafix/pack_next_do
