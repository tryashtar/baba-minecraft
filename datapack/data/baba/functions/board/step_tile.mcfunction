tag @s add self
execute if data entity @s data.frame run function baba:board/graphics/frame
execute if entity @s[nbt={data:{sprite:"cloud"}}] run function baba:board/graphics/cloud
execute if entity @s[nbt={data:{sprite:"fence"}}] run function baba:board/graphics/fence
execute if entity @s[nbt={data:{sprite:"grass"}}] run function baba:board/graphics/grass
execute if entity @s[nbt={data:{sprite:"hedge"}}] run function baba:board/graphics/hedge
execute if entity @s[nbt={data:{sprite:"ice"}}] run function baba:board/graphics/ice
execute if entity @s[nbt={data:{sprite:"lava"}}] run function baba:board/graphics/lava
execute if entity @s[nbt={data:{sprite:"pipe"}}] run function baba:board/graphics/pipe
execute if entity @s[nbt={data:{sprite:"rubble"}}] run function baba:board/graphics/rubble
execute if entity @s[nbt={data:{sprite:"wall"}}] run function baba:board/graphics/wall
execute if entity @s[nbt={data:{sprite:"water"}}] run function baba:board/graphics/water
execute if entity @s[nbt={data:{properties:["sink"]}}] if entity @e[type=marker,tag=baba.tile,tag=!self] run kill @e[type=marker,tag=baba.tile,distance=..0.1]
execute if entity @s[nbt={data:{properties:["defeat"]}}] run kill @e[type=marker,tag=baba.tile,nbt={data:{properties:["you"]}},distance=..0.1]
execute if entity @s[nbt={data:{properties:["hot"]}}] run kill @e[type=marker,tag=baba.tile,nbt={data:{properties:["melt"]}},distance=..0.1]
tag @s remove self
