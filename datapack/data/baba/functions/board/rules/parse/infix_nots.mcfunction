# 'not' appearing after a subject or 'infix noun and'
# valid follows: not, infix
data modify storage baba:main parsing set from entity @s data.parsing
tag @s add all_rules
execute store result storage baba:main parsing.rules[].text int 1 run scoreboard players get @s text_id

execute store success storage baba:main parsing.inverted byte 1 if data storage baba:main parsing{inverted:0b}

execute positioned ^ ^ ^1 as @e[type=marker,tag=baba.object,scores={sprite=30442},distance=..0.1] run data modify entity @s data.parsing set from storage baba:main parsing

execute positioned ^ ^ ^1 as @e[type=marker,tag=baba.object,tag=part.not,distance=..0.1] run function baba:board/rules/parse/infix_nots
execute positioned ^ ^ ^1 as @e[type=marker,tag=baba.object,tag=part.infix,distance=..0.1] run function baba:board/rules/parse/infix
execute positioned ^ ^ ^1 as @e[type=marker,tag=baba.object,scores={sprite=30442},tag=!part.not,tag=!part.infix,distance=..0.1] run function baba:board/rules/parse/new
