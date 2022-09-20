data modify storage baba:main props set value []
data modify storage baba:main props append from storage baba:main properties[{property:"stop"}]
data modify storage baba:main props2 set from storage baba:main props
data modify storage baba:main tiles set from block ^ ^ ^1 RecordItem.tag.tiles
data modify storage baba:main tiles2 set value []
execute if data storage baba:main props[0] positioned ^ ^ ^1 if data block ~ ~ ~ RecordItem.tag.tiles[0] run function baba:board/check_property

execute unless data storage baba:main tiles2[{has_property:1b}] run function baba:board/movement/push
