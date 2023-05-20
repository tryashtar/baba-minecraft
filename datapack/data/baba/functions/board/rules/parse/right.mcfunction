execute rotated 0 0 as @e[type=item_display,tag=baba.object,tag=reparse,tag=first_word] positioned as @s run function baba:board/rules/parse/new

execute if entity @e[type=item_display,tag=baba.object,tag=first_word,limit=1] run function baba:board/rules/parse/right
