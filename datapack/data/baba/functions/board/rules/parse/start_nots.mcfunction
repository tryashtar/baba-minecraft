# 'not' appearing before anything else, so we aren't sure if it's going to negate a prefix or a subject
# valid follows: not, prefix, noun
scoreboard players add text_id baba 1
scoreboard players operation @s[scores={text_id=0}] text_id = text_id baba
execute store result storage baba:main text_id run scoreboard players get @s text_id

# THIS IS WRONG, IF NEXT IS NOUN WE NEED TO ONLY APPLY TO THAT RULE
data modify entity @s data.parsing.rules[].text append from storage baba:main text_id
execute store success entity @s data.parsing.inverted byte 1 if data entity @s data.parsing{inverted:0b}

data modify storage baba:main parsing set from entity @s data.parsing
execute positioned ^ ^ ^1 as @e[type=marker,tag=baba.object,distance=..0.1,nbt={data:{sprite:"text"}}] run data modify entity @s data.parsing set from storage baba:main parsing

execute positioned ^ ^ ^1 as @e[type=marker,tag=baba.object,tag=part.not,distance=..0.1] run function baba:board/rules/parse/start_nots
execute positioned ^ ^ ^1 as @e[type=marker,tag=baba.object,tag=part.prefix,distance=..0.1] run function baba:board/rules/parse/prefix
execute positioned ^ ^ ^1 as @e[type=marker,tag=baba.object,tag=part.noun,distance=..0.1] run function baba:board/rules/parse/subject
