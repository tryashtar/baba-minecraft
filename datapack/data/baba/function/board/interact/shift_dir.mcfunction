scoreboard players operation float_level baba = @s float_level
scoreboard players operation @e[type=#baba:object,tag=baba.object,tag=active,predicate=baba:match_score/float_level,distance=..0.1] facing = @s facing
tag @e[type=#baba:object,tag=baba.object,tag=active,predicate=baba:match_score/float_level,distance=..0.1] add dirty
