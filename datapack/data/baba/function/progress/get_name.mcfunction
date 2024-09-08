summon marker 0 1 -8 {Tags:["baba.storage"]}
data modify storage baba:main link set from entity @s item.components."minecraft:custom_data".baba.level_data.link
execute if data storage baba:main {link:"up"} run data modify storage baba:main link set from storage baba:main level_stack[-2]
execute store result entity @e[type=marker,tag=baba.storage,limit=1] Pos[1] double 1 run data get storage baba:main link[0]
execute store result entity @e[type=marker,tag=baba.storage,limit=1] Pos[0] double 1 run data get storage baba:main link[1]
execute as @e[type=marker,tag=baba.storage,limit=1] at @s run tp @s ~ ~1 ~
execute at @e[type=marker,tag=baba.storage,limit=1] run data modify storage baba:main level_name set from block ~ ~ ~ item.components."minecraft:custom_data".baba.metadata.name
kill @e[type=marker,tag=baba.storage]
