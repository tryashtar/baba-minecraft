tag @s add reparse
execute store result storage baba:main context.text_id int 1 run scoreboard players get @s text_id
execute if score @s text_used matches 1.. run function baba:board/rules/remove with storage baba:main context
execute as @e[type=item_display,tag=baba.object,tag=is_text,tag=!reparse,distance=..1.1] at @s run function baba:board/rules/try_invalidate
