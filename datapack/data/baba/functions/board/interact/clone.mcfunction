scoreboard players set clone baba 1
# not the same as blocker, 'more' does not spread onto objects that are both weak and stop
execute if entity @e[type=item_display,tag=baba.object,distance=..0.1,nbt={item:{tag:{properties:["stop"]}}},limit=1] run scoreboard players set clone baba 0
execute if entity @e[type=item_display,tag=baba.object,distance=..0.1,nbt={item:{tag:{properties:["push"]}}},limit=1] run scoreboard players set clone baba 0
execute if entity @e[type=item_display,tag=baba.object,distance=..0.1,nbt={item:{tag:{properties:["pull"]}}},limit=1] run scoreboard players set clone baba 0
execute if score clone baba matches 1 as @e[type=item_display,tag=baba.object,distance=..0.1] if score @s sprite = spawn baba run scoreboard players set clone baba 0
execute if score clone baba matches 1 run function baba:board/spawn
tag @e[type=item_display,tag=spawn,distance=..0.1,limit=1] add assign
scoreboard players operation @e[type=item_display,tag=spawn,distance=..0.1,limit=1] facing = @s facing
scoreboard players operation @e[type=item_display,tag=spawn,distance=..0.1,limit=1] walk = @s walk
scoreboard players operation @e[type=item_display,tag=spawn,distance=..0.1,limit=1] frame = @s frame
tag @e[type=item_display,tag=spawn,distance=..0.1,limit=1] remove spawn
