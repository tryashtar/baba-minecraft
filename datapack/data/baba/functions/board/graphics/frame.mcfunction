execute if data block ~ ~ ~ RecordItem.tag.tiles[{frame:3}] run data modify block ~ ~ ~ RecordItem.tag.tiles[{frame:3}].frame set value -1
execute if data block ~ ~ ~ RecordItem.tag.tiles[{frame:2}] run data modify block ~ ~ ~ RecordItem.tag.tiles[{frame:2}].frame set value 3
execute if data block ~ ~ ~ RecordItem.tag.tiles[{frame:1}] run data modify block ~ ~ ~ RecordItem.tag.tiles[{frame:1}].frame set value 2
execute if data block ~ ~ ~ RecordItem.tag.tiles[{frame:0}] run data modify block ~ ~ ~ RecordItem.tag.tiles[{frame:0}].frame set value 1
execute if data block ~ ~ ~ RecordItem.tag.tiles[{frame:-1}] run data modify block ~ ~ ~ RecordItem.tag.tiles[{frame:-1}].frame set value 0
