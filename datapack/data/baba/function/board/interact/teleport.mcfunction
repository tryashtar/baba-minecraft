tag @s add self
scoreboard players operation float_level baba = @s float_level
scoreboard players operation sprite baba = @s sprite
# if multiple object types are tele, you still only teleport between objects of the same type
tag @e[type=#baba:object,tag=baba.object,tag=active,tag=!self,tag=prop.tele,predicate=baba:match_score/sprite,x=63.0,y=67.0,z=-168.0,dx=24,dy=14,dz=1] add linked
execute as @e[type=#baba:object,tag=baba.object,tag=active,tag=!self,tag=!linked,tag=!teleported,predicate=baba:match_score/float_level,distance=..0.1] at @e[type=#baba:object,tag=baba.object,tag=active,tag=linked,sort=random,limit=1,x=63.0,y=67.0,z=-168.0,dx=24,dy=14,dz=1] run function baba:board/movement/teleport
tag @e[type=#baba:object,tag=baba.object,tag=active,tag=linked,x=63.0,y=67.0,z=-168.0,dx=24,dy=14,dz=1] remove linked
tag @s remove self
