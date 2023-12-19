data modify storage baba:main all_list set value []
data modify storage baba:main words set value {noun:[],property:[],verb:[],infix:[],prefix:[],and:[],not:[]}
execute as @e[type=item_display,tag=baba.object] run function baba:board/populate_palette_add
