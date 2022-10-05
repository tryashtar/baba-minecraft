# 'and' appearing after an effect
# valid follows: not, property, noun, verb
scoreboard players add text_id baba 1
scoreboard players operation @s[scores={text_id=0}] text_id = text_id baba
execute store result storage baba:main text_id int 1 run scoreboard players get @s text_id

# not sure if this is a new verb or new effect
data modify entity @s data.parsing.rules[][].ambiguous append from storage baba:main text_id

data modify storage baba:main parsing set from entity @s data.parsing
execute positioned ^ ^ ^1 as @e[type=marker,tag=baba.object,distance=..0.1,nbt={data:{sprite:"text"}}] run data modify entity @s data.parsing set from storage baba:main parsing

execute positioned ^ ^ ^1 unless entity @e[type=marker,tag=baba.object,tag=part.not,distance=..0.1,limit=1] unless entity @e[type=marker,tag=baba.object,tag=part.noun,distance=..0.1,limit=1] unless entity @e[type=marker,tag=baba.object,tag=part.property,distance=..0.1,limit=1] unless entity @e[type=marker,tag=baba.object,tag=part.verb,distance=..0.1,limit=1] run function baba:board/rules/parse/done
execute positioned ^ ^ ^1 as @e[type=marker,tag=baba.object,tag=part.not,distance=..0.1] run function baba:board/rules/parse/effect_nots
execute positioned ^ ^ ^1 as @e[type=marker,tag=baba.object,tag=part.noun,distance=..0.1] run function baba:board/rules/parse/effect
execute positioned ^ ^ ^1 as @e[type=marker,tag=baba.object,tag=part.property,distance=..0.1] run function baba:board/rules/parse/effect
execute positioned ^ ^ ^1 as @e[type=marker,tag=baba.object,tag=part.verb,distance=..0.1] run function baba:board/rules/parse/verb
execute positioned ^ ^ ^1 as @e[type=marker,tag=baba.object,tag=!part.not,tag=!part.noun,tag=!part.property,tag=!part.verb,distance=..0.1,nbt={data:{sprite:"text"}}] run function baba:board/rules/parse/new
