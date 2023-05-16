tag @s add self
scoreboard players operation float baba = @s float_level
scoreboard players operation sprite baba = @s sprite
# if multiple object types are tele, you still only teleport between objects of the same type
execute as @e[type=item_display,tag=baba.object,tag=!self,tag=prop.tele] if score @s sprite = sprite baba run tag @s add linked
execute as @e[type=item_display,tag=baba.object,tag=!self,tag=!linked,tag=!teleported,distance=..0.1] if score @s float_level = float baba if entity @e[type=item_display,tag=baba.object,tag=linked,limit=1] as @a at @s run playsound baba:teleport master @s
execute as @e[type=item_display,tag=baba.object,tag=!self,tag=!linked,tag=!teleported,distance=..0.1] if score @s float_level = float baba at @e[type=item_display,tag=baba.object,tag=linked,sort=random,limit=1] run function baba:board/movement/teleport
tag @e[type=item_display,tag=baba.object,tag=linked] remove linked
tag @s remove self
