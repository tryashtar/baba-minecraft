execute as @e[type=marker,tag=baba.datafixer] at @s unless block ~ ~-1 ~ #baba:editor_floor run tellraw @a [{"text":"Unpacked ","color":"green"},{"score":{"name":"packed","objective":"baba"}}," levels!"]
execute as @e[type=marker,tag=baba.datafixer] at @s unless block ~ ~-1 ~ #baba:editor_floor run forceload remove ~ ~ ~17 ~32
execute as @e[type=marker,tag=baba.datafixer] at @s unless block ~ ~-1 ~ #baba:editor_floor run kill @s
execute as @e[type=marker,tag=baba.datafixer] at @s if block ~ ~-1 ~ #baba:editor_floor run function baba:dev/datafix/unpack_next
