tag @s add reparse
execute if score @s text_used matches 1.. run function baba:board/rules/remove
execute as @e[type=item_display,tag=baba.object,tag=is_text,tag=!reparse,distance=..1.1] at @s run function baba:board/rules/try_invalidate
