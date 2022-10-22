# parse left-to-right text
execute rotated 0 0 positioned ^ ^ ^-1 unless entity @e[type=marker,tag=baba.object,tag=is_text,distance=..0.1,limit=1] positioned ^ ^ ^2 if entity @e[type=marker,tag=baba.object,tag=is_text,distance=..0.1,limit=1] positioned ^ ^ ^-1 run function baba:board/rules/parse/new

# parse up-to-down text
execute rotated 90 0 positioned ^ ^ ^-1 unless entity @e[type=marker,tag=baba.object,tag=is_text,distance=..0.1,limit=1] positioned ^ ^ ^2 if entity @e[type=marker,tag=baba.object,tag=is_text,distance=..0.1,limit=1] positioned ^ ^ ^-1 run function baba:board/rules/parse/new
