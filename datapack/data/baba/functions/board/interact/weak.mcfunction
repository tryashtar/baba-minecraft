tag @s add self
execute if entity @e[type=armor_stand,tag=baba.object,tag=!self,distance=..0.1,limit=1] as @a at @s run playsound baba:defeat master @s
execute if entity @e[type=armor_stand,tag=baba.object,tag=!self,distance=..0.1,limit=1] run function baba:board/interact/destroy
tag @s remove self
