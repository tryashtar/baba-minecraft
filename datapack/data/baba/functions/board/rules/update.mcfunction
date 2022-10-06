# parse text and cache properties in the affected objects
summon marker ~ ~ ~ {UUID:[I;-1360730055,1799769912,-1745300323,-25935887]}
scoreboard players set text_id baba 0
scoreboard players set @e[type=marker,tag=baba.object,tag=is_text] text_id 0
scoreboard players set @e[type=marker,tag=baba.object,tag=is_text] text_used 0
scoreboard players set @e[type=marker,tag=baba.object,tag=is_text] text_disabled 0
scoreboard players set @e[type=marker,tag=baba.object,tag=is_text] text_disabled2 0
tag @e[type=marker,tag=baba.object,tag=disabled] remove disabled
data modify storage baba:main rules set value []
execute as @e[type=marker,tag=baba.object,tag=is_text] at @s run function baba:board/rules/parse
execute as @e[type=marker,tag=baba.object] run data modify entity @s data merge value {transforms:[],properties:[],has:[],make:[]}
data modify storage baba:main iter_rules set from storage baba:main rules
execute if data storage baba:main rules[0] run function baba:board/rules/apply
execute as @e[type=marker,tag=baba.object,scores={text_used=1..,text_disabled2=1..}] run scoreboard players operation @s text_disabled += @s text_disabled2
execute as @e[type=marker,tag=baba.object,scores={text_used=1..}] if score @s text_disabled >= @s text_used run tag @s add disabled
# builtin rules
execute as @e[type=marker,tag=baba.object,tag=is_text] run data modify entity @s data.properties append value {text:"push",inverted:0b}
execute as @e[type=marker,tag=baba.object,nbt={data:{sprite:"level"}}] run data modify entity @s data.properties append value {text:"stop",inverted:0b}
execute as @e[type=marker,tag=baba.object,nbt={data:{sprite:"cursor"}}] run data modify entity @s data.properties append value {text:"select",inverted:0b}
execute as @e[type=marker,tag=baba.object] run function baba:board/rules/apply/filter
kill aee4e839-6b46-4f38-97f8-d49dfe743ff1
