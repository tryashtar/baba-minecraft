summon marker ~ ~ ~ {UUID:[I;-1360730055,1799769912,-1745300323,-25935887]}
execute as @e[type=marker,tag=baba.object,tag=!transformed] at @s if data entity @s data.transforms[0] run function baba:board/rules/transform
execute as @e[type=marker,tag=baba.object,tag=transformed] run data modify entity @s data merge value {transforms:[],properties:[],has:[],make:[]}
execute if entity @e[type=marker,tag=baba.object,tag=transformed,limit=1] run data modify storage baba:main iter_rules set from storage baba:main rules
execute if entity @e[type=marker,tag=baba.object,tag=transformed,limit=1] run function baba:board/rules/apply_transformed
execute as @e[type=marker,tag=baba.object,tag=is_text,tag=transformed] run data modify entity @s data.properties append value {property:"push",inverted:0b}
execute as @e[type=marker,tag=baba.object,tag=transformed,nbt={data:{sprite:"level"}}] run data modify entity @s data.properties append value {property:"stop",inverted:0b}
execute as @e[type=marker,tag=baba.object,tag=transformed,nbt={data:{sprite:"cursor"}}] run data modify entity @s data.properties append value {property:"select",inverted:0b}
execute as @e[type=marker,tag=baba.object,tag=transformed] run function baba:board/rules/apply/filter
kill aee4e839-6b46-4f38-97f8-d49dfe743ff1
