execute store success score can_move baba run data modify block ~ ~ ~ RecordItem.tag.tick set from storage baba:main tick
execute if score can_move baba matches 1 unless data block ^ ^ ^1 RecordItem.tag.tiles[{properties:["stop"]}] run function baba:board/movement/try_move2
data remove block ~ ~ ~ RecordItem.tag.tiles[].moving
