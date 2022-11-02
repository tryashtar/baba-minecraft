execute if entity @e[type=armor_stand,tag=baba.object,distance=..0.1,nbt={HandItems:[{tag:{properties:["melt"]}}]},limit=1] as @a at @s run playsound baba:melt master @s
execute as @e[type=armor_stand,tag=baba.object,distance=..0.1,nbt={HandItems:[{tag:{properties:["melt"]}}]}] run function baba:board/interact/destroy
