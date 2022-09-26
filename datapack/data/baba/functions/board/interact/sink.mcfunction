tag @s add self
execute if entity @e[type=marker,tag=baba.object,tag=!self,distance=..0.1,limit=1] as @e[type=marker,tag=baba.object,distance=..0.1] run function baba:board/interact/destroy
tag @s remove self
