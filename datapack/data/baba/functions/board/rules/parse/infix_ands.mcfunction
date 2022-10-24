# 'and' appearing after an infix
# valid follows: not, noun, infix
data modify storage baba:main parsing set from entity @s data.parsing
tag @s add all_rules
execute store result storage baba:main parsing.rules[].text int 1 run scoreboard players get @s text_id

execute positioned ^ ^ ^1 as @e[type=marker,tag=baba.object,scores={sprite=30442},distance=..0.1] run data modify entity @s data.parsing set from storage baba:main parsing

execute positioned ^ ^ ^1 as @e[type=marker,tag=baba.object,tag=part.not,distance=..0.1] run function baba:board/rules/parse/infix_unknown_nots
execute positioned ^ ^ ^1 as @e[type=marker,tag=baba.object,tag=part.noun,distance=..0.1] run function baba:board/rules/parse/infix_param
execute positioned ^ ^ ^1 as @e[type=marker,tag=baba.object,tag=part.infix,distance=..0.1] run function baba:board/rules/parse/infix
execute positioned ^ ^ ^1 as @e[type=marker,tag=baba.object,scores={sprite=30442},tag=!part.not,tag=!part.noun,tag=!part.infix,distance=..0.1] run function baba:board/rules/parse/new
