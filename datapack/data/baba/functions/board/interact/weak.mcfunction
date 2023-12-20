tag @s add self
scoreboard players operation float_level baba = @s float_level
execute unless entity @e[type=#baba:object,tag=baba.object,tag=!self,predicate=baba:same_float_level,distance=..0.1,limit=1] run return run tag @s remove self
function baba:board/interact/destroy
tag @s remove self
