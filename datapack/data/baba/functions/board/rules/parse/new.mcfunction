# start of sentence
# valid parts: not, prefix, noun
execute if score cleanup baba matches 1 as @e[type=armor_stand,tag=baba.object,tag=reparse] run function baba:board/rules/parse/reset
scoreboard players set cleanup baba 0

# for every word, the parsing context is pulled into storage, modified, then embedded into subsequent words' entity data
# this is because text stacking allows for splitting of execution of these functions
data modify storage baba:main parsing set value {inverted:0b,split:0b,ambiguous:[],pending:[],rules:[{text:[],conditions:[]}]}
data modify entity @s HandItems[0].tag.parsing set from storage baba:main parsing
execute if entity @s[tag=part.not] run function baba:board/rules/parse/start_nots
execute if entity @s[tag=part.prefix] run function baba:board/rules/parse/prefix
execute if entity @s[tag=part.noun] run function baba:board/rules/parse/subject

# any time the following text is not of the expected part, try starting a new rule there
execute if entity @s[tag=!part.not,tag=!part.prefix,tag=!part.noun] positioned ^ ^ ^1 as @e[type=armor_stand,tag=baba.object,tag=reparse,distance=..0.1] run function baba:board/rules/parse/new
