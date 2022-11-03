tag @s add self
scoreboard players operation float baba = @s float_level
execute if entity @e[type=armor_stand,tag=baba.object,tag=!self,distance=..0.1,limit=1] as @e[type=armor_stand,tag=baba.object,distance=..0.1] if score @s float_level = float baba as @a at @s run playsound baba:sink master @s
execute if entity @e[type=armor_stand,tag=baba.object,tag=!self,distance=..0.1,limit=1] as @e[type=armor_stand,tag=baba.object,distance=..0.1] if score @s float_level = float baba run function baba:board/interact/destroy
tag @s remove self
