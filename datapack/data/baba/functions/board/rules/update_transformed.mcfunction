execute as @e[type=marker,tag=baba.object,tag=transformed] run data modify entity @s data.parsing set value {transforms:[],properties:[],has:[],make:[]}
data modify storage baba:main negative_rules set from storage baba:main rules
data modify storage baba:main positive_rules set from storage baba:main rules
data remove storage baba:main negative_rules[{effect:{inverted:0b}}]
data remove storage baba:main positive_rules[{effect:{inverted:1b}}]
summon marker ~ ~ ~ {UUID:[I;-1360730055,1799769912,-1745300323,-25935887]}
execute if data storage baba:main negative_rules[0] run function baba:board/rules/apply_negative
execute if data storage baba:main positive_rules[0] run function baba:board/rules/apply_positive
execute as @e[type=marker,tag=baba.object,tag=transformed] run data modify entity @s data.properties set value []
execute as @e[type=marker,tag=baba.object,tag=transformed] run data modify entity @s data.properties append from entity @s data.parsing.properties[{inverted:0b}].text_text
execute as @e[type=marker,tag=baba.object,tag=transformed,scores={sprite=30442},nbt=!{data:{parsing:{properties:[{inverted:1b,text_text:"push"}]}}}] run data modify entity @s data.properties append value "push"
execute as @e[type=marker,tag=baba.object,tag=transformed,scores={sprite=26837},nbt=!{data:{parsing:{properties:[{inverted:1b,text_text:"stop"}]}}}] run data modify entity @s data.properties append value "stop"
execute as @e[type=marker,tag=baba.object,tag=transformed,scores={sprite=2526},nbt=!{data:{parsing:{properties:[{inverted:1b,text_text:"select"}]}}}] run data modify entity @s data.properties append value "select"
kill aee4e839-6b46-4f38-97f8-d49dfe743ff1
