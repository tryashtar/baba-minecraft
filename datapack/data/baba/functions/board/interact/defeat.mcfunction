scoreboard players operation float_level baba = @s float_level
execute if entity @e[type=#baba:object,tag=baba.object,tag=prop.you,predicate=baba:same_float_level,distance=..0.1,limit=1] run scoreboard players add destroyed baba 1
execute as @e[type=#baba:object,tag=baba.object,tag=prop.you,predicate=baba:same_float_level,distance=..0.1] run function baba:board/interact/destroy
