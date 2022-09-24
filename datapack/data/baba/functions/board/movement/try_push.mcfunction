tag @s remove move_success
data modify block ^ ^ ^1 RecordItem.tag.tiles[{properties:["push"]}].moving set value 1b
execute if block ^ ^ ^2 jukebox positioned ^ ^ ^1 run function baba:board/movement/try_move
execute if entity @s[tag=move_success] run data modify block ^ ^ ^2 RecordItem.tag.tiles[{properties:["push"],moved:1b}].facing set from block ~ ~ ~ RecordItem.tag.tiles[{moving:1b}].facing
