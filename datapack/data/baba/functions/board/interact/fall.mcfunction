tag @s add falling
scoreboard players operation float baba = @s float_level
scoreboard players set open baba 0
execute if entity @s[nbt={item:{tag:{properties:["open"]}}}] run scoreboard players set open baba 1
execute if entity @s[nbt={item:{tag:{properties:["shut"]}}}] run scoreboard players set open baba 2
execute if block ~-1 ~-1 ~ #baba:board run function baba:board/interact/fall_loop
tag @e[type=item_display,tag=baba.object,tag=blocker] remove blocker
tag @s remove falling
