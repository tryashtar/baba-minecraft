execute as @e[type=marker,tag=baba.tile] run data modify entity @s data.properties set value []
execute as @e[type=marker,tag=baba.tile,nbt={data:{sprite:"text",part:"noun"}}] run function baba:board/rules/check_transform
execute as @e[type=marker,tag=baba.tile,nbt={data:{sprite:"text"}}] run data modify entity @s data.properties append value "push"
execute as @e[type=marker,tag=baba.tile,nbt={data:{sprite:"text",part:"noun"}}] run function baba:board/rules/check_property
