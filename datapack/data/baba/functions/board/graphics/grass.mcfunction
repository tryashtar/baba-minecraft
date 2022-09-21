data modify block ~ ~ ~ RecordItem.tag.tiles[{sprite:"grass"}] merge value {up:0b,down:0b,left:0b,right:0b}
execute if data block ~1 ~ ~ RecordItem.tag.tiles[{sprite:"grass"}] run data modify block ~ ~ ~ RecordItem.tag.tiles[{sprite:"grass"}].up set value 1b
execute if data block ~-1 ~ ~ RecordItem.tag.tiles[{sprite:"grass"}] run data modify block ~ ~ ~ RecordItem.tag.tiles[{sprite:"grass"}].down set value 1b
execute if data block ~ ~ ~1 RecordItem.tag.tiles[{sprite:"grass"}] run data modify block ~ ~ ~ RecordItem.tag.tiles[{sprite:"grass"}].right set value 1b
execute if data block ~ ~ ~-1 RecordItem.tag.tiles[{sprite:"grass"}] run data modify block ~ ~ ~ RecordItem.tag.tiles[{sprite:"grass"}].left set value 1b
