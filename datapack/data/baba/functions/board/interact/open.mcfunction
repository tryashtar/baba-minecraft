execute as @a at @s run playsound baba:open master @s
execute as @e[type=item_display,tag=baba.object,tag=open,limit=1] run function baba:board/interact/destroy
function baba:board/interact/destroy
tag @e[type=item_display,tag=baba.object,tag=open] remove open
