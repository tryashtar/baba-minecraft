scoreboard players add opened baba 1
tag @s add self
# you can open yourself, but you don't get destroyed twice!
execute as @e[type=#baba:object,tag=baba.object,tag=active,tag=open,tag=!self,limit=1] run function baba:board/interact/opened
function baba:board/interact/opened
tag @s remove self
tag @e[type=#baba:object,tag=baba.object,tag=active,tag=open] remove open
