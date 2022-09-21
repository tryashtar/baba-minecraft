data modify block ~ ~ ~ RecordItem.tag.tiles[{properties:["you"]}].moving set value 1b
execute if score direction baba matches 1 rotated 270 0 if block ^ ^ ^1 jukebox run function baba:board/movement/try_move
execute if score direction baba matches 2 rotated 90 0 if block ^ ^ ^1 jukebox run function baba:board/movement/try_move
execute if score direction baba matches 3 rotated 180 0 if block ^ ^ ^1 jukebox run function baba:board/movement/try_move
execute if score direction baba matches 4 rotated 0 0 if block ^ ^ ^1 jukebox run function baba:board/movement/try_move
data remove block ~ ~ ~ RecordItem.tag.tiles[{properties:["you"]}].moving
