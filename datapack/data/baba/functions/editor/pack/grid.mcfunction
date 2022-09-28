data modify storage baba:main row set value []
function baba:editor/pack/row
data modify storage baba:main level append from storage baba:main row
execute positioned ~1 ~ ~ if block ~ ~-2 ~ white_concrete run function baba:editor/pack/grid
