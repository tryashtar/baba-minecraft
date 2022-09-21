data modify block ~ ~ ~ RecordItem.tag.tiles[{sprite:"cloud"}] merge value {up:0b,down:0b,left:0b,right:0b}
execute if data block ~1 ~ ~ RecordItem.tag.tiles[{sprite:"cloud"}] run data modify block ~ ~ ~ RecordItem.tag.tiles[{sprite:"cloud"}].up set value 1b
execute if data block ~-1 ~ ~ RecordItem.tag.tiles[{sprite:"cloud"}] run data modify block ~ ~ ~ RecordItem.tag.tiles[{sprite:"cloud"}].down set value 1b
execute if data block ~ ~ ~1 RecordItem.tag.tiles[{sprite:"cloud"}] run data modify block ~ ~ ~ RecordItem.tag.tiles[{sprite:"cloud"}].right set value 1b
execute if data block ~ ~ ~-1 RecordItem.tag.tiles[{sprite:"cloud"}] run data modify block ~ ~ ~ RecordItem.tag.tiles[{sprite:"cloud"}].left set value 1b
