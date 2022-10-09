execute if score direction baba matches 1 positioned ~1 ~ ~ if entity @e[type=marker,tag=baba.object,distance=..0.1,nbt={data:{sprite:"line"}},limit=1] run tp @s ~ ~ ~
execute if score direction baba matches 1 positioned ~1 ~ ~ if entity @e[type=marker,tag=baba.object,distance=..0.1,nbt={data:{sprite:"line"}},limit=1] run scoreboard players set @s move_frame 2
execute if score direction baba matches 1 positioned ~1 ~ ~ if entity @e[type=marker,tag=baba.object,distance=..0.1,nbt={data:{sprite:"level"}},limit=1] run tp @s ~ ~ ~
execute if score direction baba matches 1 positioned ~1 ~ ~ if entity @e[type=marker,tag=baba.object,distance=..0.1,nbt={data:{sprite:"level"}},limit=1] run scoreboard players set @s move_frame 2
execute if score direction baba matches 1 positioned ~1 ~ ~ if entity @e[type=marker,tag=baba.object,distance=..0.1,nbt={data:{properties:["you"]}},limit=1] run tp @s ~ ~ ~
execute if score direction baba matches 1 positioned ~1 ~ ~ if entity @e[type=marker,tag=baba.object,distance=..0.1,nbt={data:{properties:["you"]}},limit=1] run scoreboard players set @s move_frame 2
execute if score direction baba matches 2 positioned ~-1 ~ ~ if entity @e[type=marker,tag=baba.object,distance=..0.1,nbt={data:{sprite:"line"}},limit=1] run tp @s ~ ~ ~
execute if score direction baba matches 2 positioned ~-1 ~ ~ if entity @e[type=marker,tag=baba.object,distance=..0.1,nbt={data:{sprite:"line"}},limit=1] run scoreboard players set @s move_frame 2
execute if score direction baba matches 2 positioned ~-1 ~ ~ if entity @e[type=marker,tag=baba.object,distance=..0.1,nbt={data:{sprite:"level"}},limit=1] run tp @s ~ ~ ~
execute if score direction baba matches 2 positioned ~-1 ~ ~ if entity @e[type=marker,tag=baba.object,distance=..0.1,nbt={data:{sprite:"level"}},limit=1] run scoreboard players set @s move_frame 2
execute if score direction baba matches 2 positioned ~-1 ~ ~ if entity @e[type=marker,tag=baba.object,distance=..0.1,nbt={data:{properties:["you"]}},limit=1] run tp @s ~ ~ ~
execute if score direction baba matches 2 positioned ~-1 ~ ~ if entity @e[type=marker,tag=baba.object,distance=..0.1,nbt={data:{properties:["you"]}},limit=1] run scoreboard players set @s move_frame 2
execute if score direction baba matches 3 positioned ~ ~ ~-1 if entity @e[type=marker,tag=baba.object,distance=..0.1,nbt={data:{sprite:"line"}},limit=1] run tp @s ~ ~ ~
execute if score direction baba matches 3 positioned ~ ~ ~-1 if entity @e[type=marker,tag=baba.object,distance=..0.1,nbt={data:{sprite:"line"}},limit=1] run scoreboard players set @s move_frame 2
execute if score direction baba matches 3 positioned ~ ~ ~-1 if entity @e[type=marker,tag=baba.object,distance=..0.1,nbt={data:{sprite:"level"}},limit=1] run tp @s ~ ~ ~
execute if score direction baba matches 3 positioned ~ ~ ~-1 if entity @e[type=marker,tag=baba.object,distance=..0.1,nbt={data:{sprite:"level"}},limit=1] run scoreboard players set @s move_frame 2
execute if score direction baba matches 3 positioned ~ ~ ~-1 if entity @e[type=marker,tag=baba.object,distance=..0.1,nbt={data:{properties:["you"]}},limit=1] run tp @s ~ ~ ~
execute if score direction baba matches 3 positioned ~ ~ ~-1 if entity @e[type=marker,tag=baba.object,distance=..0.1,nbt={data:{properties:["you"]}},limit=1] run scoreboard players set @s move_frame 2
execute if score direction baba matches 4 positioned ~ ~ ~1 if entity @e[type=marker,tag=baba.object,distance=..0.1,nbt={data:{sprite:"line"}},limit=1] run tp @s ~ ~ ~
execute if score direction baba matches 4 positioned ~ ~ ~1 if entity @e[type=marker,tag=baba.object,distance=..0.1,nbt={data:{sprite:"line"}},limit=1] run scoreboard players set @s move_frame 2
execute if score direction baba matches 4 positioned ~ ~ ~1 if entity @e[type=marker,tag=baba.object,distance=..0.1,nbt={data:{sprite:"level"}},limit=1] run tp @s ~ ~ ~
execute if score direction baba matches 4 positioned ~ ~ ~1 if entity @e[type=marker,tag=baba.object,distance=..0.1,nbt={data:{sprite:"level"}},limit=1] run scoreboard players set @s move_frame 2
execute if score direction baba matches 4 positioned ~ ~ ~1 if entity @e[type=marker,tag=baba.object,distance=..0.1,nbt={data:{properties:["you"]}},limit=1] run tp @s ~ ~ ~
execute if score direction baba matches 4 positioned ~ ~ ~1 if entity @e[type=marker,tag=baba.object,distance=..0.1,nbt={data:{properties:["you"]}},limit=1] run scoreboard players set @s move_frame 2
scoreboard players operation @s move_dir = direction baba
