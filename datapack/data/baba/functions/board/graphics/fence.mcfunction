data modify block ~ ~ ~ RecordItem.tag.tiles[{sprite:"fence"}] merge value {up:0b,down:0b,left:0b,right:0b}
execute if data block ~1 ~ ~ RecordItem.tag.tiles[{sprite:"fence"}] run data modify block ~ ~ ~ RecordItem.tag.tiles[{sprite:"fence"}].up set value 1b
execute if data block ~-1 ~ ~ RecordItem.tag.tiles[{sprite:"fence"}] run data modify block ~ ~ ~ RecordItem.tag.tiles[{sprite:"fence"}].down set value 1b
execute if data block ~ ~ ~1 RecordItem.tag.tiles[{sprite:"fence"}] run data modify block ~ ~ ~ RecordItem.tag.tiles[{sprite:"fence"}].right set value 1b
execute if data block ~ ~ ~-1 RecordItem.tag.tiles[{sprite:"fence"}] run data modify block ~ ~ ~ RecordItem.tag.tiles[{sprite:"fence"}].left set value 1b
