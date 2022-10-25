# prefix
# valid follows: not, and, noun
scoreboard players set cleanup baba 1
tag @s add all_rules
tag @e[type=marker,tag=baba.object,tag=ambiguous] add all_rules
tag @e[type=marker,tag=baba.object,tag=ambiguous] remove ambiguous
data modify storage baba:main parsing set from entity @s data.parsing
execute store result storage baba:main text_id int 1 run scoreboard players get @s text_id
data modify storage baba:main parsing.rules[].text append from storage baba:main text_id
data modify storage baba:main parsing.rules[].text append from storage baba:main parsing.ambiguous[]
data modify storage baba:main parsing.ambiguous set value []

data modify storage baba:main parsing.rules[].conditions append value {}
data modify storage baba:main parsing.rules[].conditions[-1].condition_text set from entity @s data.text
data modify storage baba:main parsing.rules[].conditions[-1].inverted set from storage baba:main parsing.inverted
data modify storage baba:main parsing.inverted set value 0b

execute positioned ^ ^ ^1 as @e[type=marker,tag=baba.object,scores={sprite=30442},distance=..0.1] run data modify entity @s data.parsing set from storage baba:main parsing

execute positioned ^ ^ ^1 as @e[type=marker,tag=baba.object,tag=part.not,distance=..0.1] run function baba:board/rules/parse/subject_nots
execute positioned ^ ^ ^1 as @e[type=marker,tag=baba.object,tag=part.and,distance=..0.1] run function baba:board/rules/parse/prefix_ands
execute positioned ^ ^ ^1 as @e[type=marker,tag=baba.object,tag=part.noun,distance=..0.1] run function baba:board/rules/parse/subject
execute positioned ^ ^ ^1 as @e[type=marker,tag=baba.object,scores={sprite=30442},tag=!part.not,tag=!part.and,tag=!part.noun,distance=..0.1] run function baba:board/rules/parse/new
