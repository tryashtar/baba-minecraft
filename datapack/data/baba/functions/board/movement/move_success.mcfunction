data modify block ^ ^ ^1 RecordItem.tag.tiles append from block ~ ~ ~ RecordItem.tag.tiles[{has_property:1b}]
data remove block ~ ~ ~ RecordItem.tag.tiles[{has_property:1b}]
data modify block ^ ^ ^1 RecordItem.tag.tick set from storage baba:main tick
scoreboard players set move_success baba 1
