# 'and' appearing after a subject
# valid follows: not, noun
scoreboard players add text_id baba 1
scoreboard players operation @s[scores={text_id=0}] text_id = text_id baba
execute store result storage baba:main text_id int 1 run scoreboard players get @s text_id
data modify storage baba:main parsing set from entity @s data.parsing
tag @s add all_rules
data modify storage baba:main parsing.rules[].text append from storage baba:main text_id

execute positioned ^ ^ ^1 as @e[type=marker,tag=baba.object,tag=is_text,distance=..0.1] run data modify entity @s data.parsing set from storage baba:main parsing

execute positioned ^ ^ ^1 as @e[type=marker,tag=baba.object,tag=part.not,distance=..0.1] run function baba:board/rules/parse/subject_nots
execute positioned ^ ^ ^1 as @e[type=marker,tag=baba.object,tag=part.noun,distance=..0.1] run function baba:board/rules/parse/subject
execute positioned ^ ^ ^1 as @e[type=marker,tag=baba.object,tag=is_text,tag=!part.not,tag=!part.noun,distance=..0.1] run function baba:board/rules/parse/new
