data modify storage baba:main palette set value {all_list:[],words:{noun:[],property:[],verb:[],infix:[],prefix:[],and:[],not:[]}}
execute as @e[type=item_display,tag=baba.object,tag=active,x=63.0,y=67.0,z=-168.0,dx=24,dy=14,dz=1] run function baba:board/populate_palette_add
data modify entity @s data.palette set from storage baba:main palette
