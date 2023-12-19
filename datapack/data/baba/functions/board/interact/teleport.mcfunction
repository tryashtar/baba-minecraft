tag @s add self
scoreboard players operation float_level baba = @s float_level
scoreboard players operation sprite baba = @s sprite
# if multiple object types are tele, you still only teleport between objects of the same type
tag @e[type=#baba:object,tag=baba.object,tag=!self,tag=prop.tele,predicate=baba:same_sprite] add linked
execute as @e[type=#baba:object,tag=baba.object,tag=!self,tag=!linked,tag=!teleported,predicate=baba:same_float_level,distance=..0.1] at @e[type=#baba:object,tag=baba.object,tag=linked,sort=random,limit=1] run function baba:board/movement/teleport
tag @e[type=#baba:object,tag=baba.object,tag=linked] remove linked
tag @s remove self
