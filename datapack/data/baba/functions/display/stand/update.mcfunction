# kill last to avoid flicker
tag @e[type=armor_stand,tag=baba.overlay] add old
execute as @e[type=armor_stand,tag=baba.object] run function baba:display/stand/object
kill @e[type=armor_stand,tag=baba.overlay,tag=old]
