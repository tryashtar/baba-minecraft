# clone in-place to load chunks
clone ~ ~ ~ ~ ~ ~ ~ ~ ~ replace force

# next level in same row
execute if block ~ ~-1 ~ air if block ~ ~-1 ~1 #baba:editor_floor run tp @s ~ ~ ~1
execute if block ~ ~-1 ~ air if block ~ ~-1 ~1 #baba:editor_floor as @e[type=marker,tag=baba.storage] at @s run tp @s ~1 ~ ~

# next level in next row
execute if block ~ ~-1 ~ air if block ~ ~-1 ~1 air run function baba:dev/datafix/backtrack_next
execute if block ~ ~-1 ~ air if block ~ ~-1 ~1 air as @e[type=marker,tag=baba.storage] at @s run tp @s 0 ~1 ~

# keep looking
execute if block ~ ~-1 ~ #baba:editor_floor positioned ~ ~ ~1 run function baba:dev/datafix/find_next
