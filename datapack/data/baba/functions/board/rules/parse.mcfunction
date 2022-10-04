# parse left-to-right text
execute rotated 180 0 positioned ^ ^ ^-1 unless entity @e[type=marker,tag=baba.object,distance=..0.1,nbt={data:{sprite:"text"}},limit=1] positioned ^ ^ ^1 run function baba:board/rules/parse/consume

# parse up-to-down text
execute rotated 270 0 positioned ^ ^ ^-1 unless entity @e[type=marker,tag=baba.object,distance=..0.1,nbt={data:{sprite:"text"}},limit=1] positioned ^ ^ ^1 run function baba:board/rules/parse/consume
