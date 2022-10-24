# parse text and cache properties in the affected objects
summon marker ~ ~ ~ {UUID:[I;-1360730055,1799769912,-1745300323,-25935887]}
scoreboard players set text_id baba 0
execute as @e[type=marker,tag=baba.object,scores={sprite=30442}] store result score @s text_id run scoreboard players add text_id baba 1
scoreboard players set @e[type=marker,tag=baba.object,scores={sprite=30442}] text_used 0
scoreboard players set @e[type=marker,tag=baba.object,scores={sprite=30442}] text_disabled 0
scoreboard players set @e[type=marker,tag=baba.object,scores={sprite=30442}] text_disabled2 0
tag @e[type=marker,tag=baba.object,tag=disabled] remove disabled
data modify storage baba:main rules set value []
execute as @e[type=marker,tag=baba.object,scores={sprite=30442}] at @s run function baba:board/rules/parse
execute as @e[type=marker,tag=baba.object] run data modify entity @s data merge value {transforms:[],properties:[],has:[],make:[]}
data modify storage baba:main iter_rules set from storage baba:main rules
execute if data storage baba:main rules[0] run function baba:board/rules/apply
execute as @e[type=marker,tag=baba.object,scores={text_used=1..,text_disabled2=1..}] run scoreboard players operation @s text_disabled += @s text_disabled2
execute as @e[type=marker,tag=baba.object,scores={text_used=1..}] if score @s text_disabled >= @s text_used run tag @s add disabled
# builtin rules
execute as @e[type=marker,tag=baba.object,scores={sprite=30442}] run data modify entity @s data.properties append value {text:"push",inverted:0b}
execute as @e[type=marker,tag=baba.object,scores={sprite=26837}] run data modify entity @s data.properties append value {text:"stop",inverted:0b}
execute as @e[type=marker,tag=baba.object,scores={sprite=2526}] run data modify entity @s data.properties append value {text:"select",inverted:0b}
execute as @e[type=marker,tag=baba.object] run function baba:board/rules/apply/filter
kill aee4e839-6b46-4f38-97f8-d49dfe743ff1
