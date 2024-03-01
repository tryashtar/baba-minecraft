data modify storage baba:main last_level set from storage baba:main level_stack[-1]
data remove storage baba:main level_stack[-1]
function baba:progress/load_top
execute if entity @e[type=#baba:object,tag=baba.object,tag=prop.select,limit=1] as @e[type=#baba:object,tag=baba.object,nbt={item:{components:{"minecraft:custom_data":{level_data:{}}}}}] at @s run function baba:progress/restore_cursor
