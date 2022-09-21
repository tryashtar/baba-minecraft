data modify block ~ ~ ~ RecordItem.tag.tiles[{sprite:"pipe"}] merge value {up:0b,down:0b,left:0b,right:0b}
execute if data block ~1 ~ ~ RecordItem.tag.tiles[{sprite:"pipe"}] run data modify block ~ ~ ~ RecordItem.tag.tiles[{sprite:"pipe"}].up set value 1b
execute if data block ~-1 ~ ~ RecordItem.tag.tiles[{sprite:"pipe"}] run data modify block ~ ~ ~ RecordItem.tag.tiles[{sprite:"pipe"}].down set value 1b
execute if data block ~ ~ ~1 RecordItem.tag.tiles[{sprite:"pipe"}] run data modify block ~ ~ ~ RecordItem.tag.tiles[{sprite:"pipe"}].right set value 1b
execute if data block ~ ~ ~-1 RecordItem.tag.tiles[{sprite:"pipe"}] run data modify block ~ ~ ~ RecordItem.tag.tiles[{sprite:"pipe"}].left set value 1b
