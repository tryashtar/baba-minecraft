tag @s add self
execute if entity @e[type=armor_stand,tag=baba.object,tag=!self,distance=..0.1,limit=1] as @e[type=armor_stand,tag=baba.object,distance=..0.1,nbt={HandItems:[{tag:{properties:["weak"]}}]}] run function baba:board/interact/destroy
tag @s remove self
