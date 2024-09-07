data modify storage baba:main palette set value {all_list:[],words:{noun:[],property:[],verb:[],infix:[],prefix:[],and:[],not:[]}}
execute as @e[type=item_display,tag=baba.object] run function baba:board/populate_palette_add
data modify entity @s data.palette set from storage baba:main palette
