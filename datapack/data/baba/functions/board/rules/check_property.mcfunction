data modify storage baba:main affected_sprite set from entity @s data.text
execute positioned ~ ~ ~1 if entity @e[type=marker,tag=baba.tile,nbt={data:{sprite:"text",part:"is"}}] positioned ~ ~ ~1 as @e[type=marker,tag=baba.tile,nbt={data:{sprite:"text","part":"property"}}] run function baba:board/rules/assign_property
execute positioned ~-1 ~ ~ if entity @e[type=marker,tag=baba.tile,nbt={data:{sprite:"text",part:"is"}}] positioned ~-1 ~ ~ as @e[type=marker,tag=baba.tile,nbt={data:{sprite:"text","part":"property"}}] run function baba:board/rules/assign_property
