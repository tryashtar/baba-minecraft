# infix
# valid follows: not, noun
data modify storage baba:main parsing set from entity @s item.tag.parsing
tag @s add all_rules
execute store result storage baba:main text_id int 1 run scoreboard players get @s text_id
data modify storage baba:main parsing.rules[].text append from storage baba:main text_id

data modify storage baba:main parsing.rules[].conditions append value {parameters:[]}
data modify storage baba:main parsing.rules[].conditions[-1].condition_text set from entity @s item.tag.text
data modify storage baba:main parsing.rules[].conditions[-1].inverted set from storage baba:main parsing.inverted
data modify storage baba:main parsing.inverted set value 0b

execute positioned ^ ^ ^1 as @e[type=item_display,tag=baba.object,tag=reparse,distance=..0.1] run data modify entity @s item.tag.parsing set from storage baba:main parsing

execute positioned ^ ^ ^1 as @e[type=item_display,tag=baba.object,tag=part.not,distance=..0.1] run function baba:board/rules/parse/infix_param_nots
execute positioned ^ ^ ^1 as @e[type=item_display,tag=baba.object,tag=part.noun,distance=..0.1] run function baba:board/rules/parse/infix_param
execute if entity @s[scores={text=20119}] positioned ^ ^ ^1 as @e[type=item_display,tag=baba.object,scores={direction=1..},distance=..0.1] run function baba:board/rules/parse/infix_param
execute if entity @s[scores={text=20119}] positioned ^ ^ ^1 as @e[type=item_display,tag=baba.object,tag=reparse,tag=!part.not,tag=!part.noun,distance=..0.1] unless score @s direction matches 1.. run function baba:board/rules/parse/new
execute if entity @s[scores={text=20119}] positioned ^ ^ ^1 as @e[type=item_display,tag=baba.object,tag=reparse,tag=!part.not,tag=!part.noun,distance=..0.1] run function baba:board/rules/parse/new
