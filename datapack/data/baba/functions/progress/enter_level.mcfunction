data modify storage baba:main level_link set from entity @s item.tag.level_data.link
summon marker 0 1 -8 {Tags:["baba.storage"]}
execute store result entity @e[type=marker,tag=baba.storage,limit=1] Pos[1] double 1 run data get storage baba:main level_link[0]
execute store result entity @e[type=marker,tag=baba.storage,limit=1] Pos[0] double 1 run data get storage baba:main level_link[1]
execute as @e[type=marker,tag=baba.storage,limit=1] at @s run tp @s ~ ~1 ~
execute at @e[type=marker,tag=baba.storage,limit=1] run data modify storage baba:main level set from block ~ ~ ~ RecordItem.tag.level
data modify storage baba:main level_metadata set value {}
execute at @e[type=marker,tag=baba.storage,limit=1] run data modify storage baba:main level_metadata set from block ~ ~ ~ RecordItem.tag.level_metadata
execute positioned 0 1 0 run function baba:editor/load
kill @e[type=marker,tag=baba.storage]
