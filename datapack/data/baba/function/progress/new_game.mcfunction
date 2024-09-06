data modify storage baba:main level_stack set value [[1,0],[0,0]]
data modify storage baba:main completed_levels set value []
function baba:progress/load_top
item replace entity @a hotbar.0 with diamond
