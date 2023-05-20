# subject noun
# valid follows: not, and, infix, verb
scoreboard players set cleanup baba 1
tag @s add subject
tag @e[type=item_display,tag=baba.object,tag=ambiguous] add subject
tag @e[type=item_display,tag=baba.object,tag=ambiguous] remove ambiguous
data modify storage baba:main parsing set from entity @s item.tag.parsing

# the first rule is a template that contains prefix data, if any
# copy it and add subject-specific data
data modify storage baba:main parsing.rules append from storage baba:main parsing.rules[0]
execute store result storage baba:main parsing.rules[-1].subject.sprite int 1 run scoreboard players get @s text
data modify storage baba:main parsing.rules[-1].subject.sprite_text set from entity @s item.tag.text
data modify storage baba:main parsing.rules[-1].subject.inverted set from storage baba:main parsing.inverted
execute store result storage baba:main text_id int 1 run scoreboard players get @s text_id
data modify storage baba:main parsing.rules[-1].text append from storage baba:main text_id
data modify storage baba:main parsing.rules[-1].text append from storage baba:main parsing.ambiguous[]
data modify storage baba:main parsing.ambiguous set value []
data modify storage baba:main parsing.inverted set value 0b

execute positioned ^ ^ ^1 as @e[type=item_display,tag=baba.object,tag=reparse,distance=..0.1] run data modify entity @s item.tag.parsing set from storage baba:main parsing

execute positioned ^ ^ ^1 as @e[type=item_display,tag=baba.object,tag=part.not,distance=..0.1] run function baba:board/rules/parse/infix_nots
execute positioned ^ ^ ^1 as @e[type=item_display,tag=baba.object,tag=part.and,distance=..0.1] run function baba:board/rules/parse/subject_ands
execute positioned ^ ^ ^1 as @e[type=item_display,tag=baba.object,tag=part.infix,distance=..0.1] run function baba:board/rules/parse/infix
execute positioned ^ ^ ^1 as @e[type=item_display,tag=baba.object,tag=part.verb,distance=..0.1] run function baba:board/rules/parse/verb
execute positioned ^ ^ ^1 run tag @e[type=item_display,tag=baba.object,tag=reparse,tag=!part.not,tag=!part.and,tag=!part.infix,tag=!part.verb,distance=..0.1] add first_word
