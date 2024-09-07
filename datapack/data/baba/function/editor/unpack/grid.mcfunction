fill ~-1 ~-1 ~1 ~-1 ~-1 ~2 air
setblock ~-1 ~-1 ~2 jukebox{RecordItem:{id:"tnt",count:1}}
item modify block ~-1 ~-1 ~2 container.0 {function:"copy_custom_data",source:{type:"storage",source:"baba:main"},ops:[{op:"replace",source:"level.metadata",target:"baba"}]}
data remove block ~-1 ~-1 ~2 RecordItem.components."minecraft:custom_data".baba.name
execute if data storage baba:main level.metadata.name run setblock ~-1 ~-1 ~1 bamboo_wall_sign[facing=west]
execute if data storage baba:main level.metadata.name run data modify block ~-1 ~-1 ~1 front_text.messages[0] set from storage baba:main level.metadata.name
execute if data storage baba:main level.tiles[0] run function baba:editor/unpack/row
