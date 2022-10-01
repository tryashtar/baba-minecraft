execute if entity @e[type=marker,tag=baba.object,tag=part.operator,distance=..0.1,nbt={data:{text:"not"}}] run function baba:board/rules/invert
execute positioned ^ ^ ^1 run function baba:board/rules/get_more
