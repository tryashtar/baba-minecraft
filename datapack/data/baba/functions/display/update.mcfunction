execute as @e[type=item_display,tag=baba.object,tag=dirty,tag=!empty] on passengers run kill @s
execute as @e[type=item_display,tag=baba.object,tag=dirty,tag=!empty] run function baba:display/object
tag @e[tag=baba.object,tag=dirty] remove dirty
