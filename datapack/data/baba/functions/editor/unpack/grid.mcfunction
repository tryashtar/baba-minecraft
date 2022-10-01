scoreboard players set unpacked baba 1
data modify storage baba:main level set from block ~ ~ ~ RecordItem.tag.level
setblock ~ ~-2 ~ jukebox{RecordItem:{id:"minecraft:tnt",Count:1b}}
data modify block ~ ~-2 ~ RecordItem.tag.level_metadata set from block ~ ~ ~ RecordItem.tag.level_metadata
execute if data storage baba:main level[0] positioned ~ ~1 ~ run function baba:editor/unpack/row
