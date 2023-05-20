execute as @e[type=item_display,tag=baba.object,tag=dirty] on passengers run kill @s
execute as @e[type=item_display,tag=baba.object,tag=dirty] run function baba:display/stand/object
tag @e[tag=baba.object,tag=dirty] remove dirty
