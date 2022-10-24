# 'and' appearing after 'prefix'
# valid follows: not, prefix
scoreboard players add text_id baba 1
scoreboard players operation @s[scores={text_id=0}] text_id = text_id baba
tag @s add all_rules
data modify storage baba:main parsing set from entity @s data.parsing
execute store result storage baba:main parsing.rules[].text int 1 run scoreboard players get @s text_id

execute positioned ^ ^ ^1 as @e[type=marker,tag=baba.object,scores={sprite=30442},distance=..0.1] run data modify entity @s data.parsing set from storage baba:main parsing

execute positioned ^ ^ ^1 as @e[type=marker,tag=baba.object,tag=part.not,distance=..0.1] run function baba:board/rules/parse/prefix_nots
execute positioned ^ ^ ^1 as @e[type=marker,tag=baba.object,tag=part.prefix,distance=..0.1] run function baba:board/rules/parse/prefix
execute positioned ^ ^ ^1 as @e[type=marker,tag=baba.object,scores={sprite=30442},tag=!part.not,tag=!part.prefix,distance=..0.1] run function baba:board/rules/parse/new
