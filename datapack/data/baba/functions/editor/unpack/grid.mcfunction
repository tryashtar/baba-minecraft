fill ~-1 ~-2 ~ ~ ~-2 ~ air
setblock ~ ~-2 ~ jukebox{RecordItem:{id:"tnt",count:1}}
data modify block ~ ~-2 ~ RecordItem.components."minecraft:custom_data" set from storage baba:main level.metadata
data remove block ~ ~-2 ~ RecordItem.components."minecraft:custom_data".name
execute if data storage baba:main level.metadata.name run setblock ~-1 ~-2 ~ bamboo_wall_sign[facing=west]
execute if data storage baba:main level.metadata.name run data modify block ~-1 ~-2 ~ front_text.messages[0] set from storage baba:main level.metadata.name
execute if data storage baba:main level.tiles[0] run function baba:editor/unpack/row
