data modify block ~ ~ ~ RecordItem.tag.tiles[{sprite:"lava"}] merge value {up:0b,down:0b,left:0b,right:0b}
execute if data block ~1 ~ ~ RecordItem.tag.tiles[{sprite:"lava"}] run data modify block ~ ~ ~ RecordItem.tag.tiles[{sprite:"lava"}].up set value 1b
execute if data block ~-1 ~ ~ RecordItem.tag.tiles[{sprite:"lava"}] run data modify block ~ ~ ~ RecordItem.tag.tiles[{sprite:"lava"}].down set value 1b
execute if data block ~ ~ ~1 RecordItem.tag.tiles[{sprite:"lava"}] run data modify block ~ ~ ~ RecordItem.tag.tiles[{sprite:"lava"}].right set value 1b
execute if data block ~ ~ ~-1 RecordItem.tag.tiles[{sprite:"lava"}] run data modify block ~ ~ ~ RecordItem.tag.tiles[{sprite:"lava"}].left set value 1b
