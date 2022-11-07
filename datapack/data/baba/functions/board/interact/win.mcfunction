scoreboard players operation float baba = @s float_level
execute as @e[type=armor_stand,tag=baba.object,distance=..0.1,nbt={HandItems:[{tag:{properties:["you"]}}]}] if score @s float_level = float baba run scoreboard players set @a win 1
execute as @e[type=armor_stand,tag=baba.object,distance=..0.1,nbt={HandItems:[{tag:{properties:["you"]}}]}] if score @s float_level = float baba as @a at @s run playsound baba:win master @s
