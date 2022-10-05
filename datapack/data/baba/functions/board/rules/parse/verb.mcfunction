# verb
# valid follows: not, property, noun
scoreboard players add text_id baba 1
scoreboard players operation @s[scores={text_id=0}] text_id = text_id baba
execute store result storage baba:main text_id int 1 run scoreboard players get @s text_id

execute if entity @s[nbt={data:{parsing:{split:0b}}}] run data remove entity @s data.parsing.rules[0]
execute if entity @s[nbt={data:{parsing:{split:0b}}}] run data modify storage baba:main parsing.rules set value []
execute if entity @s[nbt={data:{parsing:{split:0b}}}] run data modify storage baba:main parsing.rules append from entity @s data.parsing.rules
execute if entity @s[nbt={data:{parsing:{split:0b}}}] run data modify storage baba:main parsing.rules append from entity @s data.parsing.rules
execute if entity @s[nbt={data:{parsing:{split:1b}}}] run data modify storage baba:main parsing.rules append from entity @s data.parsing.rules[0]
data modify storage baba:main parsing.rules[-1][].text append from storage baba:main text_id
data modify storage baba:main parsing.rules[-1][].verb set from entity @s data.text
execute if entity @s[nbt={data:{parsing:{split:0b}}}] run data modify storage baba:main parsing.split set value 1b

execute positioned ^ ^ ^1 as @e[type=marker,tag=baba.object,distance=..0.1,nbt={data:{sprite:"text"}}] run data modify entity @s data.parsing set from storage baba:main parsing

execute positioned ^ ^ ^1 as @e[type=marker,tag=baba.object,tag=part.not,distance=..0.1] run function baba:board/rules/parse/effect_nots
execute positioned ^ ^ ^1 as @e[type=marker,tag=baba.object,tag=part.property,distance=..0.1] run function baba:board/rules/parse/effect
execute positioned ^ ^ ^1 as @e[type=marker,tag=baba.object,tag=part.noun,distance=..0.1] run function baba:board/rules/parse/effect
execute positioned ^ ^ ^1 as @e[type=marker,tag=baba.object,tag=!part.not,tag=!part.property,tag=!part.noun,distance=..0.1,nbt={data:{sprite:"text"}}] run function baba:board/rules/parse/new
