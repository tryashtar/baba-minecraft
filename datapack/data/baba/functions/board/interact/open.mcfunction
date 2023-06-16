scoreboard players add opened baba 1
tag @s add self
# you can open yourself, but you don't get destroyed twice!
execute as @e[type=item_display,tag=baba.object,tag=open,tag=!self,limit=1] run function baba:board/interact/destroy
function baba:board/interact/destroy
tag @s add self
tag @e[type=item_display,tag=baba.object,tag=open] remove open
