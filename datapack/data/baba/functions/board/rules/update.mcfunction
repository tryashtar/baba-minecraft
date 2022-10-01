# parse text and cache properties in the affected objects
# transforms occur first so that properties are assigned to the correct object
summon marker ~ ~ ~ {UUID:[I;-1360730055,1799769912,-1745300323,-25935887]}
#execute as @e[type=marker,tag=baba.object,tag=part.verb,nbt={data:{sprite:"text",text:"is"}}] at @s run function baba:board/rules/transform/check

# builtin rules
#execute as @e[type=marker,tag=baba.object,nbt={data:{sprite:"text"}}] run data modify entity @s data.properties append value "push"
#execute as @e[type=marker,tag=baba.object,nbt={data:{sprite:"cursor"}}] run data modify entity @s data.properties append value "select"
#execute as @e[type=marker,tag=baba.object,nbt={data:{sprite:"level"}}] run data modify entity @s data.properties append value "stop"

data modify storage baba:main rules set value []
execute as @e[type=marker,tag=baba.object,tag=part.verb] at @s run function baba:board/rules/parse
execute as @e[type=marker,tag=baba.object] at @s run function baba:board/rules/apply
#execute as @e[type=marker,tag=baba.object,tag=part.verb,nbt={data:{sprite:"text",text:"has"}}] at @s run function baba:board/rules/has/check
kill aee4e839-6b46-4f38-97f8-d49dfe743ff1
