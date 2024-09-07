tag @s add self
scoreboard players operation float_level baba = @s float_level
execute unless entity @e[type=#baba:object,tag=baba.object,tag=active,tag=!self,predicate=baba:match_score/float_level,distance=..0.1,limit=1] run return run tag @s remove self
execute as @e[type=#baba:object,tag=baba.object,tag=active,tag=!self,predicate=baba:match_score/float_level,distance=..0.1] run function baba:board/interact/destroy
function baba:board/interact/do_sink
tag @s remove self
