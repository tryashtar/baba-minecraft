data modify storage baba:main last_level set from storage baba:main level_stack[-1]
data remove storage baba:main level_stack[-1]
function baba:progress/load_top
execute if entity @e[type=item_display,tag=baba.object,scores={sprite=2526},limit=1] as @e[type=item_display,tag=baba.object,nbt={item:{tag:{level_data:{}}}}] at @s run function baba:progress/restore_cursor
