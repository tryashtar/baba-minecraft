scoreboard players operation float_level baba = @s float_level
execute if entity @e[type=#baba:object,tag=baba.object,tag=prop.you,predicate=baba:same_float_level,distance=..0.1,limit=1] run scoreboard players set @a win 1
execute if entity @e[type=#baba:object,tag=baba.object,tag=prop.you,predicate=baba:same_float_level,distance=..0.1,limit=1] run scoreboard players set win baba 1
