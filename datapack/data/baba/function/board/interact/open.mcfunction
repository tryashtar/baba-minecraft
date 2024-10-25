scoreboard players add opened baba 1
tag @s add self
# you can open yourself, but you don't get destroyed twice!
execute as @e[type=#baba:object,tag=baba.object,tag=active,tag=open,tag=!self,limit=1,x=63.0,y=67.0,z=-168.0,dx=24,dy=14,dz=1] run function baba:board/interact/opened
function baba:board/interact/opened
tag @s remove self
tag @e[type=#baba:object,tag=baba.object,tag=active,tag=open,x=63.0,y=67.0,z=-168.0,dx=24,dy=14,dz=1] remove open
