data modify storage baba:main consume set value []
data modify storage baba:main consume append from storage baba:main properties[{property:"you"}]
scoreboard players set has_property baba 0
execute if data storage baba:main consume[0] run function baba:board/check_property
execute store success score can_move baba run data modify block ~ ~ ~ RecordItem.tag.tick set from storage baba:main tick
execute if score can_move baba matches 1 if score has_property baba matches 1 if score direction baba matches 0 rotated 90 0 if block ^ ^ ^1 jukebox run function baba:board/movement/move_tile
execute if score can_move baba matches 1 if score has_property baba matches 1 if score direction baba matches 1 rotated 180 0 if block ^ ^ ^1 jukebox run function baba:board/movement/move_tile
execute if score can_move baba matches 1 if score has_property baba matches 1 if score direction baba matches 2 rotated 0 0 if block ^ ^ ^1 jukebox run function baba:board/movement/move_tile
execute if score can_move baba matches 1 if score has_property baba matches 1 if score direction baba matches 3 rotated 270 0 if block ^ ^ ^1 jukebox run function baba:board/movement/move_tile
