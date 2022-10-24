# 'not' appearing before anything else, so we aren't sure if it's going to negate a prefix or a subject
# valid follows: not, prefix, noun
scoreboard players set cleanup baba 1
scoreboard players add text_id baba 1
scoreboard players operation @s[scores={text_id=0}] text_id = text_id baba
tag @s add ambiguous
data modify storage baba:main parsing set from entity @s data.parsing
execute store result storage baba:main parsing.ambiguous int 1 run scoreboard players get @s text_id

execute store success storage baba:main parsing.inverted byte 1 if data storage baba:main parsing{inverted:0b}

execute positioned ^ ^ ^1 as @e[type=marker,tag=baba.object,scores={sprite=30442},distance=..0.1] run data modify entity @s data.parsing set from storage baba:main parsing

execute positioned ^ ^ ^1 as @e[type=marker,tag=baba.object,tag=part.not,distance=..0.1] run function baba:board/rules/parse/start_nots
execute positioned ^ ^ ^1 as @e[type=marker,tag=baba.object,tag=part.prefix,distance=..0.1] run function baba:board/rules/parse/prefix
execute positioned ^ ^ ^1 as @e[type=marker,tag=baba.object,tag=part.noun,distance=..0.1] run function baba:board/rules/parse/subject
execute positioned ^ ^ ^1 as @e[type=marker,tag=baba.object,scores={sprite=30442},tag=!part.not,tag=!part.prefix,tag=!part.noun,distance=..0.1] run function baba:board/rules/parse/new
