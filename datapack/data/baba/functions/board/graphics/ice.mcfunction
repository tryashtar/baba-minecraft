data modify block ~ ~ ~ RecordItem.tag.tiles[{sprite:"ice"}] merge value {up:0b,down:0b,left:0b,right:0b}
execute if data block ~1 ~ ~ RecordItem.tag.tiles[{sprite:"ice"}] run data modify block ~ ~ ~ RecordItem.tag.tiles[{sprite:"ice"}].up set value 1b
execute if data block ~-1 ~ ~ RecordItem.tag.tiles[{sprite:"ice"}] run data modify block ~ ~ ~ RecordItem.tag.tiles[{sprite:"ice"}].down set value 1b
execute if data block ~ ~ ~1 RecordItem.tag.tiles[{sprite:"ice"}] run data modify block ~ ~ ~ RecordItem.tag.tiles[{sprite:"ice"}].right set value 1b
execute if data block ~ ~ ~-1 RecordItem.tag.tiles[{sprite:"ice"}] run data modify block ~ ~ ~ RecordItem.tag.tiles[{sprite:"ice"}].left set value 1b
