tag @s add self
scoreboard players operation float baba = @s float_level
scoreboard players operation sprite baba = @s sprite
execute as @e[type=armor_stand,tag=baba.object,tag=!self,nbt={HandItems:[{tag:{properties:["tele"]}}]}] if score @s sprite = sprite baba run tag @s add linked
execute as @e[type=armor_stand,tag=baba.object,tag=!self,tag=!linked,tag=!teleported,distance=..0.1] if score @s float_level = float baba if entity @e[type=armor_stand,tag=baba.object,tag=linked,limit=1] as @a at @s run playsound baba:teleport master @s
execute as @e[type=armor_stand,tag=baba.object,tag=!self,tag=!linked,tag=!teleported,distance=..0.1] if score @s float_level = float baba at @e[type=armor_stand,tag=baba.object,tag=linked,sort=random,limit=1] run function baba:board/movement/teleport
tag @e[type=armor_stand,tag=baba.object,tag=linked] remove linked
tag @s remove self
