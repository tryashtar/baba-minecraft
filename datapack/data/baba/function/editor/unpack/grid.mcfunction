fill ~-1 ~-1 ~1 ~-1 ~-1 ~2 air
execute if data storage baba:main level.metadata.name run setblock ~-1 ~-1 ~1 bamboo_wall_sign[facing=west]
execute if data storage baba:main level.metadata.palette run setblock ~-1 ~-1 ~1 bamboo_wall_sign[facing=west]
execute if data storage baba:main level.metadata.name run data modify block ~-1 ~-1 ~1 front_text.messages[0] set from storage baba:main level.metadata.name
execute if data storage baba:main level.metadata.palette run data modify block ~-1 ~-1 ~1 front_text.messages[1] set value '{"storage":"baba:main","nbt":"level.metadata.palette"}'
data remove storage baba:main level.metadata.name
data remove storage baba:main level.metadata.palette
execute store result score metadata baba run data get storage baba:main level.metadata
execute if score metadata baba matches 1.. run setblock ~-1 ~-1 ~2 decorated_pot{item:{id:"disc_fragment_5",count:1}}
execute if score metadata baba matches 1.. run item modify block ~-1 ~-1 ~2 container.0 {function:"copy_custom_data",source:{type:"storage",source:"baba:main"},ops:[{op:"replace",source:"level.metadata",target:"baba"}]}
execute if data storage baba:main level.tiles[0] run function baba:editor/unpack/row
