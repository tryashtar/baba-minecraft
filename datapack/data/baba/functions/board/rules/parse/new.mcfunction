# start of sentence
# valid parts: not, prefix, noun
execute if score cleanup baba matches 1 as @e[type=armor_stand,tag=baba.object,scores={sprite=30442}] run function baba:board/rules/parse/reset
scoreboard players set cleanup baba 0
data modify storage baba:main parsing set value {inverted:0b,split:0b,ambiguous:[],pending:[],rules:[{text:[],conditions:[]}]}
data modify entity @s HandItems[0].tag.parsing set from storage baba:main parsing
execute if entity @s[tag=part.not] run function baba:board/rules/parse/start_nots
execute if entity @s[tag=part.prefix] run function baba:board/rules/parse/prefix
execute if entity @s[tag=part.noun] run function baba:board/rules/parse/subject
execute if entity @s[tag=!part.not,tag=!part.prefix,tag=!part.noun] positioned ^ ^ ^1 as @e[type=armor_stand,tag=baba.object,scores={sprite=30442},distance=..0.1] run function baba:board/rules/parse/new
