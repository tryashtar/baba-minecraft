scoreboard players add new_words baba 1
tag @s add is_text
tag @s add part.noun
tag @s add reparse
scoreboard players set @s text_used 0
scoreboard players set @s text_disabled 0
scoreboard players operation @s text_id > @e[type=item_display,tag=baba.object,tag=active,tag=is_text,x=63.0,y=67.0,z=-168.0,dx=24,dy=14,dz=1] text_id
scoreboard players add @s text_id 1
