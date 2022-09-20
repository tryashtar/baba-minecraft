data modify storage baba:main props set value []
data modify storage baba:main props append from storage baba:main properties[{property:"push"}]
data modify storage baba:main props2 set from storage baba:main props
data modify storage baba:main tiles set from block ^ ^ ^1 RecordItem.tag.tiles
data modify storage baba:main tiles2 set value []
execute if data storage baba:main props2[0] positioned ^ ^ ^1 if data block ~ ~ ~ RecordItem.tag.tiles[0] run function baba:board/check_property
execute if data storage baba:main props2[0] positioned ^ ^ ^1 if data block ~ ~ ~ RecordItem.tag.tiles[0] run data modify block ~ ~ ~ RecordItem.tag.tiles set from storage baba:main tiles2

scoreboard players set move_success baba 0
execute unless data storage baba:main tiles2[{has_property:1b}] run function baba:board/movement/move_success
execute if score move_success baba matches 0 positioned ^ ^ ^1 if block ^ ^ ^1 jukebox run function baba:board/movement/move_tile
execute if score move_success baba matches 1 run function baba:board/movement/move_success
data remove block ^ ^ ^1 RecordItem.tag.tiles[].has_property
