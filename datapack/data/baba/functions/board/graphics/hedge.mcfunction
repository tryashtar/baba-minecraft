data modify block ~ ~ ~ RecordItem.tag.tiles[{sprite:"hedge"}] merge value {up:0b,down:0b,left:0b,right:0b}
execute if data block ~1 ~ ~ RecordItem.tag.tiles[{sprite:"hedge"}] run data modify block ~ ~ ~ RecordItem.tag.tiles[{sprite:"hedge"}].up set value 1b
execute if data block ~-1 ~ ~ RecordItem.tag.tiles[{sprite:"hedge"}] run data modify block ~ ~ ~ RecordItem.tag.tiles[{sprite:"hedge"}].down set value 1b
execute if data block ~ ~ ~1 RecordItem.tag.tiles[{sprite:"hedge"}] run data modify block ~ ~ ~ RecordItem.tag.tiles[{sprite:"hedge"}].right set value 1b
execute if data block ~ ~ ~-1 RecordItem.tag.tiles[{sprite:"hedge"}] run data modify block ~ ~ ~ RecordItem.tag.tiles[{sprite:"hedge"}].left set value 1b
