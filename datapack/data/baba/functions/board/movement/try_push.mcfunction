scoreboard players set move_success baba 0
data modify block ^ ^ ^1 RecordItem.tag.tiles[{properties:["push"]}].moving set value 1b
execute if block ^ ^ ^2 jukebox positioned ^ ^ ^1 run function baba:board/movement/try_move
