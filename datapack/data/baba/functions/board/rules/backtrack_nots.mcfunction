tag @s remove first_word
tag @e[type=item_display,tag=baba.object,tag=reparse,tag=part.not,distance=..0.1] add first_word
execute as @e[type=item_display,tag=baba.object,tag=reparse,tag=part.not,distance=..0.1] positioned ^ ^ ^-1 if entity @e[type=item_display,tag=baba.object,tag=reparse,tag=part.not,distance=..0.1,limit=1] run function baba:board/rules/backtrack_nots
