data modify storage baba:main text append value '{"translate":"baba.empty_tile"}'
data modify storage baba:main tiles set from block ~ ~ ~ RecordItem.tag.tiles
execute if data storage baba:main tiles[0] run function baba:text/check_tile/row7_loop
