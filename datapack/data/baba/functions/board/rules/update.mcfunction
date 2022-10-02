# parse text and cache properties in the affected objects
summon marker ~ ~ ~ {UUID:[I;-1360730055,1799769912,-1745300323,-25935887]}
data modify storage baba:main rules set value []
scoreboard players set text_id baba 0
scoreboard players set @e[type=marker,tag=baba.object,nbt={data:{sprite:"text"}}] text_id 0
scoreboard players set @e[type=marker,tag=baba.object,nbt={data:{sprite:"text"}}] text_batch 0
scoreboard players set @e[type=marker,tag=baba.object,nbt={data:{sprite:"text"}}] text_used 0
scoreboard players set @e[type=marker,tag=baba.object,nbt={data:{sprite:"text"}}] text_disabled 0
tag @e[type=marker,tag=baba.object,tag=disabled] remove disabled
execute as @e[type=marker,tag=baba.object,tag=part.verb] at @s run function baba:board/rules/parse
execute as @e[type=marker,tag=baba.object] run data modify entity @s data merge value {transforms:[],properties:[],has:[],make:[]}
data modify storage baba:main iter_rules set from storage baba:main rules
execute if data storage baba:main rules[0] run function baba:board/rules/apply_rules
# bulitin rules
execute as @e[type=marker,tag=baba.object,nbt={data:{sprite:"text"}}] run data modify entity @s data.properties append value {property:"push",inverted:0b}
execute as @e[type=marker,tag=baba.object,nbt={data:{sprite:"level"}}] run data modify entity @s data.properties append value {property:"stop",inverted:0b}
execute as @e[type=marker,tag=baba.object,nbt={data:{sprite:"cursor"}}] run data modify entity @s data.properties append value {property:"select",inverted:0b}
execute as @e[type=marker,tag=baba.object] run function baba:board/rules/apply/filter
#execute as @e[type=marker,tag=baba.object] at @s run function baba:board/rules/apply
#execute as @e[type=marker,tag=baba.object,tag=!transformed] at @s if data entity @s data.transforms[0] run function baba:board/rules/transform
## anything that was transformed needs to re-assign its properties, but not transform again
#execute as @e[type=marker,tag=baba.object,tag=transformed] at @s run function baba:board/rules/apply
kill aee4e839-6b46-4f38-97f8-d49dfe743ff1
