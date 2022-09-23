execute if data block ~ ~ ~ RecordItem.tag.tiles[{moving:1b,frame:3}] run data modify block ~ ~ ~ RecordItem.tag.tiles[{moving:1b,frame:3}].frame set value 4
execute if data block ~ ~ ~ RecordItem.tag.tiles[{moving:1b,frame:2}] run data modify block ~ ~ ~ RecordItem.tag.tiles[{moving:1b,frame:2}].frame set value 3
execute if data block ~ ~ ~ RecordItem.tag.tiles[{moving:1b,frame:1}] run data modify block ~ ~ ~ RecordItem.tag.tiles[{moving:1b,frame:1}].frame set value 2
execute if data block ~ ~ ~ RecordItem.tag.tiles[{moving:1b,frame:0}] run data modify block ~ ~ ~ RecordItem.tag.tiles[{moving:1b,frame:0}].frame set value 1
execute if data block ~ ~ ~ RecordItem.tag.tiles[{moving:1b,frame:4}] run data modify block ~ ~ ~ RecordItem.tag.tiles[{moving:1b,frame:4}].frame set value 0
data modify block ~ ~ ~ RecordItem.tag.tiles[{moving:1b}].moved set value 1b
data modify block ^ ^ ^1 RecordItem.tag.tiles append from block ~ ~ ~ RecordItem.tag.tiles[{moving:1b}]
data remove block ^ ^ ^1 RecordItem.tag.tiles[].moving
data remove block ~ ~ ~ RecordItem.tag.tiles[{moving:1b}]
tp @s ^ ^ ^1
