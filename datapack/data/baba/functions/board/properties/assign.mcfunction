data modify storage baba:main props set from storage baba:main properties
data modify storage baba:main tiles set from block ~ ~ ~ RecordItem.tag.tiles
data modify storage baba:main tiles[].properties set value []
data modify storage baba:main out_tiles set value []
function baba:board/properties/assign_loop
data modify block ~ ~ ~ RecordItem.tag.tiles set from storage baba:main out_tiles
