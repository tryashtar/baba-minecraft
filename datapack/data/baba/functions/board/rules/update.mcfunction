execute as @e[type=marker,tag=baba.object] run data modify entity @s data.properties set value []
execute as @e[type=marker,tag=baba.object] run data modify entity @s data.has set value []
execute as @e[type=marker,tag=baba.object,tag=part.noun,nbt={data:{sprite:"text"}}] at @s run function baba:board/rules/transform/check
execute as @e[type=marker,tag=baba.object,nbt={data:{sprite:"text"}}] run data modify entity @s data.properties append value "push"
execute as @e[type=marker,tag=baba.object,tag=part.noun,nbt={data:{sprite:"text"}}] at @s run function baba:board/rules/property/check
execute as @e[type=marker,tag=baba.object,tag=part.noun,nbt={data:{sprite:"text"}}] at @s run function baba:board/rules/has/check
