# kill last to avoid flicker
tag @e[type=item_display,tag=baba.overlay] add old
execute as @e[type=item_display,tag=baba.object,tag=dirty] run function baba:display/stand/object
kill @e[type=item_display,tag=baba.overlay,tag=old]
