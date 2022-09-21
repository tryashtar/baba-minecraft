scoreboard players set move_success baba 1
execute if data block ^ ^ ^1 RecordItem.tag.tiles[{properties:["push"]}] run function baba:board/movement/try_push
execute if score move_success baba matches 1 run function baba:board/movement/do_move
