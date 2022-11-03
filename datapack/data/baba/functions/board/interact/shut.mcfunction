scoreboard players operation float baba = @s float_level
execute as @e[type=armor_stand,tag=baba.object,distance=..0.1,nbt={HandItems:[{tag:{properties:["open"]}}]}] if score @s float_level = float baba run tag @s add open
execute if entity @e[type=armor_stand,tag=baba.object,tag=open,limit=1] run function baba:board/interact/open
