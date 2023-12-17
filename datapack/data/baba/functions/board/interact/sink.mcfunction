tag @s add self
scoreboard players operation float_level baba = @s float_level
execute store result score should_sink baba if entity @e[type=#baba:object,tag=baba.object,tag=!self,predicate=baba:same_float_level,distance=..0.1,limit=1]
execute as @e[type=#baba:object,tag=baba.object,tag=!self,predicate=baba:same_float_level,distance=..0.1] run function baba:board/interact/destroy
execute if score should_sink baba matches 1 run function baba:board/interact/do_sink
tag @s remove self
