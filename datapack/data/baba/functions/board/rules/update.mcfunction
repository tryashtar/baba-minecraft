# parse text and cache properties in the affected objects
# transforms occur first so that properties are assigned to the correct object
#execute as @e[type=marker,tag=baba.object] run data modify entity @s data.properties set value []
#execute as @e[type=marker,tag=baba.object] run data modify entity @s data.has set value []
#execute as @e[type=marker,tag=baba.object,tag=part.verb,nbt={data:{sprite:"text",text:"is"}}] at @s run function baba:board/rules/transform/check

# builtin rules
#execute as @e[type=marker,tag=baba.object,nbt={data:{sprite:"text"}}] run data modify entity @s data.properties append value "push"
#execute as @e[type=marker,tag=baba.object,nbt={data:{sprite:"cursor"}}] run data modify entity @s data.properties append value "select"
#execute as @e[type=marker,tag=baba.object,nbt={data:{sprite:"level"}}] run data modify entity @s data.properties append value "stop"

execute as @e[type=marker,tag=baba.object,tag=part.verb,nbt={data:{sprite:"text",text:"is"}}] at @s run function baba:board/rules/property/check
#execute as @e[type=marker,tag=baba.object,tag=part.verb,nbt={data:{sprite:"text",text:"has"}}] at @s run function baba:board/rules/has/check
