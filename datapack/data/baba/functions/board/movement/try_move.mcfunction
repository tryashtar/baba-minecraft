execute store success score can_move baba run data modify block ~ ~ ~ RecordItem.tag.tick set from storage baba:main tick
scoreboard players set move_success baba 1
execute if score can_move baba matches 1 if data block ^ ^ ^1 RecordItem.tag.tiles[{properties:["push"]}] run function baba:board/movement/try_push
execute if score can_move baba matches 1 if data block ^ ^ ^1 RecordItem.tag.tiles[{properties:["stop"]}] run scoreboard players set move_success baba 0
execute if score can_move baba matches 1 if score move_success baba matches 1 run function baba:board/movement/do_move
data remove block ~ ~ ~ RecordItem.tag.tiles[].moving
