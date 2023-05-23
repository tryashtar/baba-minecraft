scoreboard players set unpacked baba 1
data modify storage baba:main level set from block ~ ~ ~ RecordItem.tag.level
setblock ~-1 ~-2 ~ air
setblock ~ ~-2 ~ air
setblock ~ ~-2 ~ jukebox{RecordItem:{id:"minecraft:tnt",Count:1b}}
data modify block ~ ~-2 ~ RecordItem.tag.level_metadata set from block ~ ~ ~ RecordItem.tag.level_metadata
data remove block ~ ~-2 ~ RecordItem.tag.level_metadata.name
execute if data block ~ ~ ~ RecordItem.tag.level_metadata.name run setblock ~-1 ~-2 ~ bamboo_wall_sign[facing=west]
execute if data block ~ ~ ~ RecordItem.tag.level_metadata.name run data modify block ~-1 ~-2 ~ front_text.messages[0] set from block ~ ~ ~ RecordItem.tag.level_metadata.name
execute if data storage baba:main level[0] run function baba:editor/unpack/row
