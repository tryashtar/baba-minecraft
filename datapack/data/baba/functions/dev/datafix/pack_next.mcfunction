execute as @e[type=marker,tag=baba.datafixer] at @s unless block ~ ~-1 ~ #baba:editor_floor run tellraw @a [{"text":"Packed ","color":"green"},{"score":{"name":"packed","objective":"baba"}}," levels!"]
execute as @e[type=marker,tag=baba.datafixer] at @s unless block ~ ~-1 ~ #baba:editor_floor run kill @e[type=marker,tag=baba.storage]
execute as @e[type=marker,tag=baba.datafixer] at @s unless block ~ ~-1 ~ #baba:editor_floor run kill @s
execute as @e[type=marker,tag=baba.datafixer] at @s if block ~ ~-1 ~ #baba:editor_floor run function baba:dev/datafix/pack_next_do
