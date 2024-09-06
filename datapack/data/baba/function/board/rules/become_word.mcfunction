scoreboard players add new_words baba 1
tag @s add is_text
tag @s add part.noun
tag @s add reparse
scoreboard players set @s text_used 0
scoreboard players set @s text_disabled 0
scoreboard players operation @s text_id > @e[type=item_display,tag=baba.object,tag=is_text] text_id
scoreboard players add @s text_id 1
