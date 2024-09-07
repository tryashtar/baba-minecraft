scoreboard players operation float_level baba = @s float_level
tag @e[type=#baba:object,tag=baba.object,tag=active,tag=prop.open,predicate=baba:match_score/float_level,distance=..0.1] add open
execute if entity @e[type=#baba:object,tag=baba.object,tag=active,tag=open,limit=1] run function baba:board/interact/open
