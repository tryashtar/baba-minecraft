data modify storage baba:main row set value []
function baba:editor/pack/row
data modify storage baba:main level.tiles append from storage baba:main row
execute positioned ^ ^1 ^ if block ^ ^ ^-1 #baba:editor_floor run function baba:editor/pack/grid
