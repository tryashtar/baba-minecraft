data modify storage baba:main tile set value []
function baba:editor/pack/block
data modify storage baba:main row append from storage baba:main tile
execute positioned ~ ~ ~1 if block ~ ~-2 ~ white_concrete run function baba:editor/pack/row
