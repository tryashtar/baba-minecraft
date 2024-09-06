scoreboard players add @s text_id 0
tag @s[scores={text_id=0}] add new_text
scoreboard players operation @s[tag=new_text] text_id > @e[type=item_display,tag=baba.object,tag=is_text] text_id
scoreboard players add @s[tag=new_text] text_id 1
tag @s remove new_text
