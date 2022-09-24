data modify storage baba:main swaps set from storage baba:main transforms
data modify storage baba:main tiles set from block ~ ~ ~ RecordItem.tag.tiles
data modify storage baba:main out_tiles set value []
execute if data storage baba:main transforms[0] run function baba:board/properties/transform_loop
execute unless data storage baba:main transforms[0] run data modify storage baba:main out_tiles set from storage baba:main tiles

data modify storage baba:main props set from storage baba:main properties
data modify storage baba:main tiles set from storage baba:main out_tiles
data modify storage baba:main tiles[].properties set value []
data modify storage baba:main out_tiles set value []
function baba:board/properties/property_loop
data modify block ~ ~ ~ RecordItem.tag.tiles set from storage baba:main out_tiles
