data modify block ~ ~ ~ RecordItem.tag.tiles[{sprite:"water"}] merge value {up:0b,down:0b,left:0b,right:0b}
execute if data block ~1 ~ ~ RecordItem.tag.tiles[{sprite:"water"}] run data modify block ~ ~ ~ RecordItem.tag.tiles[{sprite:"water"}].up set value 1b
execute if data block ~-1 ~ ~ RecordItem.tag.tiles[{sprite:"water"}] run data modify block ~ ~ ~ RecordItem.tag.tiles[{sprite:"water"}].down set value 1b
execute if data block ~ ~ ~1 RecordItem.tag.tiles[{sprite:"water"}] run data modify block ~ ~ ~ RecordItem.tag.tiles[{sprite:"water"}].right set value 1b
execute if data block ~ ~ ~-1 RecordItem.tag.tiles[{sprite:"water"}] run data modify block ~ ~ ~ RecordItem.tag.tiles[{sprite:"water"}].left set value 1b
