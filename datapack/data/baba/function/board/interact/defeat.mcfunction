execute unless entity @e[type=#baba:object,tag=baba.object,tag=active,tag=prop.you,predicate=baba:match_score/float_level,distance=..0.1,limit=1] run return fail
scoreboard players add destroyed baba 1
scoreboard players operation float_level baba = @s float_level
execute as @e[type=#baba:object,tag=baba.object,tag=active,tag=prop.you,predicate=baba:match_score/float_level,distance=..0.1] run function baba:board/interact/destroy
