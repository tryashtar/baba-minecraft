data modify block ~ ~ ~ RecordItem.tag.tiles[{sprite:"rubble"}] merge value {up:0b,down:0b,left:0b,right:0b}
execute if data block ~1 ~ ~ RecordItem.tag.tiles[{sprite:"rubble"}] run data modify block ~ ~ ~ RecordItem.tag.tiles[{sprite:"rubble"}].up set value 1b
execute if data block ~-1 ~ ~ RecordItem.tag.tiles[{sprite:"rubble"}] run data modify block ~ ~ ~ RecordItem.tag.tiles[{sprite:"rubble"}].down set value 1b
execute if data block ~ ~ ~1 RecordItem.tag.tiles[{sprite:"rubble"}] run data modify block ~ ~ ~ RecordItem.tag.tiles[{sprite:"rubble"}].right set value 1b
execute if data block ~ ~ ~-1 RecordItem.tag.tiles[{sprite:"rubble"}] run data modify block ~ ~ ~ RecordItem.tag.tiles[{sprite:"rubble"}].left set value 1b
