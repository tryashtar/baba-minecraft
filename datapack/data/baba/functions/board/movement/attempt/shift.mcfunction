execute if data block ~ ~ ~ RecordItem.tag.tiles[{properties:["shift"],facing:1}] run data modify block ~ ~ ~ RecordItem.tag.tiles[].moving set value 1b
execute if data block ~ ~ ~ RecordItem.tag.tiles[{properties:["shift"],facing:1}] run data remove block ~ ~ ~ RecordItem.tag.tiles[{properties:["shift"],facing:1}].moving
data remove block ~ ~ ~ RecordItem.tag.tiles[{moved:1b}].moving
execute if data block ~ ~ ~ RecordItem.tag.tiles[{properties:["shift"],facing:1}] if data block ~ ~ ~ RecordItem.tag.tiles[{moving:1b}] run data modify block ~ ~ ~ RecordItem.tag.tiles[{moving:1b}].facing set value 1
execute rotated 270 0 if block ^ ^ ^1 jukebox if data block ~ ~ ~ RecordItem.tag.tiles[{moving:1b}] run function baba:board/movement/try_move
execute if data block ~ ~ ~ RecordItem.tag.tiles[{properties:["shift"],facing:2}] run data modify block ~ ~ ~ RecordItem.tag.tiles[].moving set value 1b
execute if data block ~ ~ ~ RecordItem.tag.tiles[{properties:["shift"],facing:2}] run data remove block ~ ~ ~ RecordItem.tag.tiles[{properties:["shift"],facing:2}].moving
data remove block ~ ~ ~ RecordItem.tag.tiles[{moved:1b}].moving
execute if data block ~ ~ ~ RecordItem.tag.tiles[{properties:["shift"],facing:2}] if data block ~ ~ ~ RecordItem.tag.tiles[{moving:1b}] run data modify block ~ ~ ~ RecordItem.tag.tiles[{moving:1b}].facing set value 2
execute rotated 90 0 if block ^ ^ ^1 jukebox if data block ~ ~ ~ RecordItem.tag.tiles[{moving:1b}] run function baba:board/movement/try_move
execute if data block ~ ~ ~ RecordItem.tag.tiles[{properties:["shift"],facing:3}] run data modify block ~ ~ ~ RecordItem.tag.tiles[].moving set value 1b
execute if data block ~ ~ ~ RecordItem.tag.tiles[{properties:["shift"],facing:3}] run data remove block ~ ~ ~ RecordItem.tag.tiles[{properties:["shift"],facing:3}].moving
data remove block ~ ~ ~ RecordItem.tag.tiles[{moved:1b}].moving
execute if data block ~ ~ ~ RecordItem.tag.tiles[{properties:["shift"],facing:3}] if data block ~ ~ ~ RecordItem.tag.tiles[{moving:1b}] run data modify block ~ ~ ~ RecordItem.tag.tiles[{moving:1b}].facing set value 3
execute rotated 180 0 if block ^ ^ ^1 jukebox if data block ~ ~ ~ RecordItem.tag.tiles[{moving:1b}] run function baba:board/movement/try_move
execute if data block ~ ~ ~ RecordItem.tag.tiles[{properties:["shift"],facing:4}] run data modify block ~ ~ ~ RecordItem.tag.tiles[].moving set value 1b
execute if data block ~ ~ ~ RecordItem.tag.tiles[{properties:["shift"],facing:4}] run data remove block ~ ~ ~ RecordItem.tag.tiles[{properties:["shift"],facing:4}].moving
data remove block ~ ~ ~ RecordItem.tag.tiles[{moved:1b}].moving
execute if data block ~ ~ ~ RecordItem.tag.tiles[{properties:["shift"],facing:4}] if data block ~ ~ ~ RecordItem.tag.tiles[{moving:1b}] run data modify block ~ ~ ~ RecordItem.tag.tiles[{moving:1b}].facing set value 4
execute rotated 0 0 if block ^ ^ ^1 jukebox if data block ~ ~ ~ RecordItem.tag.tiles[{moving:1b}] run function baba:board/movement/try_move
