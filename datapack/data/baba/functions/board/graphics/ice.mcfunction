data merge entity @s {data:{up:0b,down:0b,left:0b,right:0b}}
execute positioned ~1 ~ ~ if entity @e[type=marker,tag=baba.tile,nbt={data:{sprite:"ice"}}] run data modify entity @s data.up set value 1b
execute positioned ~-1 ~ ~ if entity @e[type=marker,tag=baba.tile,nbt={data:{sprite:"ice"}}] run data modify entity @s data.down set value 1b
execute positioned ~ ~ ~1 if entity @e[type=marker,tag=baba.tile,nbt={data:{sprite:"ice"}}] run data modify entity @s data.right set value 1b
execute positioned ~ ~ ~-1 if entity @e[type=marker,tag=baba.tile,nbt={data:{sprite:"ice"}}] run data modify entity @s data.left set value 1b
