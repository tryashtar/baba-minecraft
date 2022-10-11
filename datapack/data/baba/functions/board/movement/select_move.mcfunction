tag @s remove can_move
execute if entity @e[type=marker,tag=baba.object,distance=..0.1,nbt={data:{sprite:"line"}},limit=1] run tag @s add can_move
execute if entity @s[tag=!can_move] if entity @e[type=marker,tag=baba.object,distance=..0.1,nbt={data:{sprite:"level"}},limit=1] run tag @s add can_move
execute if entity @s[tag=!can_move] if entity @e[type=marker,tag=baba.object,distance=..0.1,nbt={data:{properties:["you"]}},limit=1] run tag @s add can_move
tp @s[tag=can_move] ~ ~ ~
scoreboard players set @s[tag=can_move] move_frame 2
