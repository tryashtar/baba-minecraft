# start of sentence
# valid parts: not, prefix, noun
scoreboard players set @e[type=marker,tag=baba.object,tag=is_text] text_using 0
tag @e[type=marker,tag=baba.object,tag=all_rules] remove all_rules
tag @e[type=marker,tag=baba.object,tag=ambiguous] remove ambiguous
tag @e[type=marker,tag=baba.object,tag=last_verb] remove last_verb
tag @e[type=marker,tag=baba.object,tag=subject] remove subject
data modify storage baba:main parsing set value {inverted:0b,split:0b,ambiguous:[],rules:[{text:[],conditions:[]}]}
data modify entity @s data.parsing set from storage baba:main parsing
execute if entity @s[tag=part.not] run function baba:board/rules/parse/start_nots
execute if entity @s[tag=part.prefix] run function baba:board/rules/parse/prefix
execute if entity @s[tag=part.noun] run function baba:board/rules/parse/subject
execute if entity @s[tag=!part.not,tag=!part.prefix,tag=!part.noun] positioned ^ ^ ^1 as @e[type=marker,tag=baba.object,tag=is_text,distance=..0.1] run function baba:board/rules/parse/new
