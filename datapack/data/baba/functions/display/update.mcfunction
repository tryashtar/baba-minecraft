execute if score text_enabled baba matches 1 run function baba:display/update_text
kill @e[type=armor_stand,tag=spawn]
execute as @e[type=marker,tag=baba.object] at @s run function baba:display/update_head
