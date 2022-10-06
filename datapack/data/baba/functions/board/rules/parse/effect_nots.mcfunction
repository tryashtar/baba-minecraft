# 'not' appearing after a verb
# valid follows: not, property, noun
scoreboard players add text_id baba 1
scoreboard players operation @s[scores={text_id=0}] text_id = text_id baba
execute store result storage baba:main text_id int 1 run scoreboard players get @s text_id
data modify storage baba:main parsing set from entity @s data.parsing
data modify storage baba:main parsing.ambiguous append from storage baba:main text_id

execute store success storage baba:main parsing.inverted byte 1 if data storage baba:main parsing{inverted:0b}

execute positioned ^ ^ ^1 as @e[type=marker,tag=baba.object,distance=..0.1,nbt={data:{sprite:"text"}}] run data modify entity @s data.parsing set from storage baba:main parsing

execute positioned ^ ^ ^1 unless entity @e[type=marker,tag=baba.object,tag=part.not,distance=..0.1,limit=1] unless entity @e[type=marker,tag=baba.object,tag=part.property,distance=..0.1,limit=1] unless entity @e[type=marker,tag=baba.object,tag=part.noun,distance=..0.1,limit=1] run function baba:board/rules/parse/done
execute positioned ^ ^ ^1 as @e[type=marker,tag=baba.object,tag=part.not,distance=..0.1] run function baba:board/rules/parse/effect_nots
execute if entity @e[type=marker,tag=baba.object,tag=last_verb,tag=accepts_property,limit=1] positioned ^ ^ ^1 as @e[type=marker,tag=baba.object,tag=part.property,distance=..0.1] run function baba:board/rules/parse/effect
execute if entity @e[type=marker,tag=baba.object,tag=last_verb,tag=accepts_noun,limit=1] positioned ^ ^ ^1 as @e[type=marker,tag=baba.object,tag=part.noun,distance=..0.1] run function baba:board/rules/parse/effect
execute if entity @e[type=marker,tag=baba.object,tag=last_verb,tag=accepts_noun,tag=accepts_property,limit=1] positioned ^ ^ ^1 as @e[type=marker,tag=baba.object,tag=!part.not,tag=!part.property,tag=!part.noun,distance=..0.1,nbt={data:{sprite:"text"}}] run function baba:board/rules/parse/new
execute if entity @e[type=marker,tag=baba.object,tag=last_verb,tag=!accepts_noun,tag=accepts_property,limit=1] positioned ^ ^ ^1 as @e[type=marker,tag=baba.object,tag=!part.not,tag=!part.property,distance=..0.1,nbt={data:{sprite:"text"}}] run function baba:board/rules/parse/new
execute if entity @e[type=marker,tag=baba.object,tag=last_verb,tag=accepts_noun,tag=!accepts_property,limit=1] positioned ^ ^ ^1 as @e[type=marker,tag=baba.object,tag=!part.not,tag=!part.noun,distance=..0.1,nbt={data:{sprite:"text"}}] run function baba:board/rules/parse/new
