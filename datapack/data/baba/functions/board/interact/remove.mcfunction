execute if entity @s[tag=is_text] run tag @e[type=item_display,tag=baba.object,tag=is_text,distance=..1.1] add reparse
tag @s add removed
execute if entity @s[tag=connector] run tag @e[type=item_display,tag=baba.object,tag=connector,distance=..1.1] add dirty
tag @e[type=#baba:object,tag=baba.object,tag=assign_move,distance=..1.5] add assign
tag @e[type=marker,tag=baba.space,tag=!dirty,distance=..1.1] add dirty
kill @s
