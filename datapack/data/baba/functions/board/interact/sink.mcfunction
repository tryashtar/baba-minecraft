tag @s add self
execute if entity @e[type=marker,tag=baba.tile,tag=!self,distance=..0.1,limit=1] run kill @e[type=marker,tag=baba.tile,distance=..0.1]
tag @s remove self
