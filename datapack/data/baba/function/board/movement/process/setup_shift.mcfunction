scoreboard players operation facing baba = @s facing
scoreboard players operation stacks baba = @s shift_stacks
tag @s add self
scoreboard players operation float_level baba = @s float_level
tag @e[type=#baba:object,tag=baba.object,tag=!self,predicate=baba:match_score/float_level,distance=..0.1] add shifting
execute as @e[type=#baba:object,tag=baba.object,tag=!self,predicate=baba:match_score/float_level,distance=..0.1] run scoreboard players operation @s facing = facing baba
execute as @e[type=#baba:object,tag=baba.object,tag=!self,predicate=baba:match_score/float_level,distance=..0.1] run scoreboard players operation @s life = stacks baba
tag @s remove self
