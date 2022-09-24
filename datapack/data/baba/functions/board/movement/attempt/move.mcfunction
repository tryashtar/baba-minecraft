execute rotated 270 0 if data block ~ ~ ~ RecordItem.tag.tiles[{properties:["move"],facing:1,moved:0b}] run function baba:board/movement/attempt/move/up
execute rotated 90 0 if data block ~ ~ ~ RecordItem.tag.tiles[{properties:["move"],facing:2,moved:0b}] run function baba:board/movement/attempt/move/down
execute rotated 180 0 if data block ~ ~ ~ RecordItem.tag.tiles[{properties:["move"],facing:3,moved:0b}] run function baba:board/movement/attempt/move/left
execute rotated 0 0 if data block ~ ~ ~ RecordItem.tag.tiles[{properties:["move"],facing:4,moved:0b}] run function baba:board/movement/attempt/move/right
tag @s[tag=moved] add move_success
