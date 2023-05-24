summon marker 0 1 -8 {Tags:["baba.storage"]}
execute store result entity @e[type=marker,tag=baba.storage,limit=1] Pos[1] double 1 run data get storage baba:main level_stack[-1][0]
execute store result entity @e[type=marker,tag=baba.storage,limit=1] Pos[0] double 1 run data get storage baba:main level_stack[-1][1]
execute as @e[type=marker,tag=baba.storage,limit=1] at @s run tp @s ~ ~1 ~
execute at @e[type=marker,tag=baba.storage,limit=1] run data modify storage baba:main level set from block ~ ~ ~ RecordItem.tag
execute positioned 0 1 0 run function baba:editor/load
kill @e[type=marker,tag=baba.storage]
