scoreboard players operation facing baba = @s facing
scoreboard players operation stacks baba = @s shift_stacks
tag @s add self
scoreboard players operation float baba = @s float_level
execute as @e[type=item_display,tag=baba.object,tag=!self,distance=..0.1] if score @s float_level = float baba run tag @s add shifting
execute as @e[type=item_display,tag=baba.object,tag=!self,distance=..0.1] run scoreboard players operation @s facing = facing baba
execute as @e[type=item_display,tag=baba.object,tag=!self,distance=..0.1] run scoreboard players operation @s life = stacks baba
tag @s remove self
