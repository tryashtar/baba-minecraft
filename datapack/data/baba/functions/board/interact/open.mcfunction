execute if entity @e[type=marker,tag=baba.object,distance=..0.1,nbt={data:{properties:["open"]}},limit=1] as @a at @s run playsound baba:open master @s
execute as @e[type=marker,tag=baba.object,distance=..0.1,nbt={data:{properties:["open"]}},limit=1] run function baba:board/interact/destroy
function baba:board/interact/destroy
