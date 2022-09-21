data modify block ~ ~ ~ RecordItem.tag.tiles[{sprite:"wall"}] merge value {up:0b,down:0b,left:0b,right:0b}
execute if data block ~1 ~ ~ RecordItem.tag.tiles[{sprite:"wall"}] run data modify block ~ ~ ~ RecordItem.tag.tiles[{sprite:"wall"}].up set value 1b
execute if data block ~-1 ~ ~ RecordItem.tag.tiles[{sprite:"wall"}] run data modify block ~ ~ ~ RecordItem.tag.tiles[{sprite:"wall"}].down set value 1b
execute if data block ~ ~ ~1 RecordItem.tag.tiles[{sprite:"wall"}] run data modify block ~ ~ ~ RecordItem.tag.tiles[{sprite:"wall"}].right set value 1b
execute if data block ~ ~ ~-1 RecordItem.tag.tiles[{sprite:"wall"}] run data modify block ~ ~ ~ RecordItem.tag.tiles[{sprite:"wall"}].left set value 1b
