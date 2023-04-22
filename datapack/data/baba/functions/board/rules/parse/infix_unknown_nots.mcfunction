# 'not' appearing after 'infix param and', so we aren't sure if it's going to negate an infix or a param
# valid follows: not, infix, noun
data modify storage baba:main parsing set from entity @s item.tag.parsing
tag @s add all_rules
execute store result storage baba:main text_id int 1 run scoreboard players get @s text_id
data modify storage baba:main parsing.rules[].text append from storage baba:main text_id

execute store success storage baba:main parsing.inverted byte 1 if data storage baba:main parsing{inverted:0b}

execute positioned ^ ^ ^1 as @e[type=item_display,tag=baba.object,tag=reparse,distance=..0.1] run data modify entity @s item.tag.parsing set from storage baba:main parsing

execute positioned ^ ^ ^1 as @e[type=item_display,tag=baba.object,tag=part.not,distance=..0.1] run function baba:board/rules/parse/infix_unknown_nots
execute positioned ^ ^ ^1 as @e[type=item_display,tag=baba.object,tag=part.infix,distance=..0.1] run function baba:board/rules/parse/infix
execute positioned ^ ^ ^1 as @e[type=item_display,tag=baba.object,tag=part.noun,distance=..0.1] run function baba:board/rules/parse/infix_param
execute positioned ^ ^ ^1 as @e[type=item_display,tag=baba.object,tag=reparse,tag=!part.not,tag=!part.infix,tag=!part.noun,distance=..0.1] run function baba:board/rules/parse/new
