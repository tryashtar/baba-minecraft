# 'not' appearing after 'prefix and'
# valid follows: not, prefix
tag @s add all_rules
data modify storage baba:main parsing set from entity @s HandItems[0].tag.parsing
execute store result storage baba:main text_id int 1 run scoreboard players get @s text_id
data modify storage baba:main parsing.rules[].text append from storage baba:main text_id

execute store success storage baba:main parsing.inverted byte 1 if data storage baba:main parsing{inverted:0b}

execute positioned ^ ^ ^1 as @e[type=armor_stand,tag=baba.object,tag=reparse,distance=..0.1] run data modify entity @s HandItems[0].tag.parsing set from storage baba:main parsing

execute positioned ^ ^ ^1 as @e[type=armor_stand,tag=baba.object,tag=part.not,distance=..0.1] run function baba:board/rules/parse/prefix_nots
execute positioned ^ ^ ^1 as @e[type=armor_stand,tag=baba.object,tag=part.prefix,distance=..0.1] run function baba:board/rules/parse/prefix
execute positioned ^ ^ ^1 as @e[type=armor_stand,tag=baba.object,tag=reparse,tag=!part.not,tag=!part.prefix,distance=..0.1] run function baba:board/rules/parse/new
