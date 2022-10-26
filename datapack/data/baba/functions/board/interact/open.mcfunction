execute if entity @e[type=armor_stand,tag=baba.object,distance=..0.1,nbt={HandItems:[{tag:{properties:["open"]}}]},limit=1] as @a at @s run playsound baba:open master @s
execute as @e[type=armor_stand,tag=baba.object,distance=..0.1,nbt={HandItems:[{tag:{properties:["open"]}}]},limit=1] run function baba:board/interact/destroy
function baba:board/interact/destroy
