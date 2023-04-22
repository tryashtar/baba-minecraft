scoreboard players operation float baba = @s float_level
execute as @e[type=item_display,tag=baba.object,distance=..0.1,nbt={item:{tag:{properties:["open"]}}}] if score @s float_level = float baba run tag @s add open
execute if entity @e[type=item_display,tag=baba.object,tag=open,limit=1] run function baba:board/interact/open
