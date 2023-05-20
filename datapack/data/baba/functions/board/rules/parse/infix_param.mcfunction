# infix parameter
# valid follows: and, verb
data modify storage baba:main parsing set from entity @s item.tag.parsing
tag @s add all_rules
execute store result storage baba:main text_id int 1 run scoreboard players get @s text_id
data modify storage baba:main parsing.rules[].text append from storage baba:main text_id

data modify storage baba:main parsing.rules[].conditions[-1].parameters append value {}
execute if entity @s[scores={direction=1..}] store result storage baba:main parsing.rules[].conditions[-1].parameters[-1].direction int 1 run scoreboard players get @s direction
execute store result storage baba:main parsing.rules[].conditions[-1].parameters[-1].text int 1 run scoreboard players get @s text
data modify storage baba:main parsing.rules[].conditions[-1].parameters[-1].text_text set from entity @s item.tag.text
data modify storage baba:main parsing.rules[].conditions[-1].parameters[-1].inverted set from storage baba:main parsing.inverted
data modify storage baba:main parsing.inverted set value 0b

execute positioned ^ ^ ^1 as @e[type=item_display,tag=baba.object,tag=reparse,distance=..0.1] run data modify entity @s item.tag.parsing set from storage baba:main parsing

execute positioned ^ ^ ^1 as @e[type=item_display,tag=baba.object,tag=part.and,distance=..0.1] run function baba:board/rules/parse/infix_ands
execute positioned ^ ^ ^1 as @e[type=item_display,tag=baba.object,tag=part.verb,distance=..0.1] run function baba:board/rules/parse/verb
execute positioned ^ ^ ^1 run tag @e[type=item_display,tag=baba.object,tag=reparse,tag=!part.and,tag=!part.verb,distance=..0.1] add first_word
