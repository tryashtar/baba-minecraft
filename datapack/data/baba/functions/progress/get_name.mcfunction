summon marker 0 1 -8 {Tags:["baba.storage"]}
execute store result entity @e[type=marker,tag=baba.storage,limit=1] Pos[1] double 1 run data get entity @s item.tag.level_data.link[0]
execute store result entity @e[type=marker,tag=baba.storage,limit=1] Pos[0] double 1 run data get entity @s item.tag.level_data.link[1]
execute as @e[type=marker,tag=baba.storage,limit=1] at @s run tp @s ~ ~1 ~
execute at @e[type=marker,tag=baba.storage,limit=1] run data modify storage baba:main level_name set from block ~ ~ ~ RecordItem.tag.metadata.name
kill @e[type=marker,tag=baba.storage]
