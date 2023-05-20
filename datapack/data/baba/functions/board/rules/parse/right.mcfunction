execute rotated 0 0 as @e[type=item_display,tag=baba.object,tag=reparse,tag=first_word] positioned as @s positioned ^ ^ ^1 unless entity @e[type=item_display,tag=baba.object,tag=reparse,distance=..0.1,limit=1] run tag @s remove first_word
execute rotated 0 0 as @e[type=item_display,tag=baba.object,tag=reparse,tag=first_word] positioned as @s run function baba:board/rules/parse/new

execute if entity @e[type=item_display,tag=baba.object,tag=first_word,limit=1] run function baba:board/rules/parse/right
