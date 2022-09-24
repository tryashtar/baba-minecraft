execute if data block ~ ~ ~ RecordItem.tag.tiles[{properties:["you"],moved:0b}] run data modify block ~ ~ ~ RecordItem.tag.tiles[{properties:["you"],moved:0b}].moving set value 1b
execute if data block ~ ~ ~ RecordItem.tag.tiles[{properties:["you"],moving:1b}] store result block ~ ~ ~ RecordItem.tag.tiles[{properties:["you"],moving:1b}].facing int 1 run scoreboard players get direction baba
execute if score direction baba matches 1 if data block ~ ~ ~ RecordItem.tag.tiles[{properties:["you"],moving:1b}] rotated 270 0 if block ^ ^ ^1 jukebox run function baba:board/movement/try_move
execute if score direction baba matches 2 if data block ~ ~ ~ RecordItem.tag.tiles[{properties:["you"],moving:1b}] rotated 90 0 if block ^ ^ ^1 jukebox run function baba:board/movement/try_move
execute if score direction baba matches 3 if data block ~ ~ ~ RecordItem.tag.tiles[{properties:["you"],moving:1b}] rotated 180 0 if block ^ ^ ^1 jukebox run function baba:board/movement/try_move
execute if score direction baba matches 4 if data block ~ ~ ~ RecordItem.tag.tiles[{properties:["you"],moving:1b}] rotated 0 0 if block ^ ^ ^1 jukebox run function baba:board/movement/try_move
data remove block ~ ~ ~ RecordItem.tag.tiles[{properties:["you"]}].moving
