execute if entity @e[type=armor_stand,tag=baba.object,distance=..0.1,nbt={HandItems:[{tag:{properties:["you"]}}]},limit=1] as @a at @s run playsound baba:defeat master @s
execute as @e[type=armor_stand,tag=baba.object,distance=..0.1,nbt={HandItems:[{tag:{properties:["you"]}}]}] run function baba:board/interact/destroy
