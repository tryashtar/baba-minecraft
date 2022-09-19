data modify storage baba:main props set value []
data modify storage baba:main props append from storage baba:main properties[{property:"you"}]
data modify storage baba:main props2 set from storage baba:main props
data modify storage baba:main tiles set from block ~ ~ ~ RecordItem.tag.tiles
data modify storage baba:main tiles2 set value []
execute if data storage baba:main props[0] run function baba:board/check_property
data modify block ~ ~ ~ RecordItem.tag.tiles set from storage baba:main tiles2
execute store success score can_move baba run data modify block ~ ~ ~ RecordItem.tag.tick set from storage baba:main tick
execute if score can_move baba matches 1 if data block ~ ~ ~ RecordItem.tag.tiles[{has_property:1b}] if score direction baba matches 0 rotated 90 0 if block ^ ^ ^1 jukebox run function baba:board/movement/move_tile
execute if score can_move baba matches 1 if data block ~ ~ ~ RecordItem.tag.tiles[{has_property:1b}] if score direction baba matches 1 rotated 180 0 if block ^ ^ ^1 jukebox run function baba:board/movement/move_tile
execute if score can_move baba matches 1 if data block ~ ~ ~ RecordItem.tag.tiles[{has_property:1b}] if score direction baba matches 2 rotated 0 0 if block ^ ^ ^1 jukebox run function baba:board/movement/move_tile
execute if score can_move baba matches 1 if data block ~ ~ ~ RecordItem.tag.tiles[{has_property:1b}] if score direction baba matches 3 rotated 270 0 if block ^ ^ ^1 jukebox run function baba:board/movement/move_tile
data remove block ~ ~ ~ RecordItem.tag.tiles[].has_property
