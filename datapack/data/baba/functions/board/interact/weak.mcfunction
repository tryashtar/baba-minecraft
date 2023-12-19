tag @s add self
execute unless entity @e[type=#baba:object,tag=baba.object,tag=!self,distance=..0.1,limit=1] run return run tag @s remove self
function baba:board/interact/destroy
tag @s remove self
