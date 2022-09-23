tag @s add move_success
execute if data block ^ ^ ^1 RecordItem.tag.tiles[{properties:["push"]}] run function baba:board/movement/try_push
execute if data block ^ ^ ^1 RecordItem.tag.tiles[{properties:["stop"]}] run tag @s remove move_success
execute if entity @s[tag=move_success] run function baba:board/movement/do_move
data remove block ~ ~ ~ RecordItem.tag.tiles[].moving
