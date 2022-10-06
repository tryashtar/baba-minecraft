# subject noun
# valid follows: not, and, infix, verb
scoreboard players add text_id baba 1
scoreboard players operation @s[scores={text_id=0}] text_id = text_id baba
execute store result storage baba:main text_id int 1 run scoreboard players get @s text_id
scoreboard players add @s text_using 1
scoreboard players add @e[type=marker,tag=baba.object,tag=all_rules] text_using 1
scoreboard players add @e[type=marker,tag=baba.object,tag=ambiguous] text_using 1
tag @e[type=marker,tag=baba.object,tag=ambiguous] remove ambiguous
data modify storage baba:main parsing set from entity @s data.parsing

data modify storage baba:main parsing.rules append from storage baba:main parsing.rules[0]
data modify storage baba:main parsing.rules[-1].subject.sprite set from entity @s data.text
data modify storage baba:main parsing.rules[-1].subject.inverted set from storage baba:main parsing.inverted
data modify storage baba:main parsing.rules[-1].text append from storage baba:main text_id
data modify storage baba:main parsing.rules[-1].text append from storage baba:main parsing.ambiguous
data modify storage baba:main parsing.ambiguous set value []
data modify storage baba:main parsing.inverted set value 0b

execute positioned ^ ^ ^1 as @e[type=marker,tag=baba.object,distance=..0.1,nbt={data:{sprite:"text"}}] run data modify entity @s data.parsing set from storage baba:main parsing

execute positioned ^ ^ ^1 as @e[type=marker,tag=baba.object,tag=part.not,distance=..0.1] run function baba:board/rules/parse/infix_nots
execute positioned ^ ^ ^1 as @e[type=marker,tag=baba.object,tag=part.and,distance=..0.1] run function baba:board/rules/parse/subject_ands
execute positioned ^ ^ ^1 as @e[type=marker,tag=baba.object,tag=part.infix,distance=..0.1] run function baba:board/rules/parse/infix
execute positioned ^ ^ ^1 as @e[type=marker,tag=baba.object,tag=part.verb,distance=..0.1] run function baba:board/rules/parse/verb
execute positioned ^ ^ ^1 as @e[type=marker,tag=baba.object,tag=!part.not,tag=!part.and,tag=!part.infix,tag=!part.verb,distance=..0.1,nbt={data:{sprite:"text"}}] run function baba:board/rules/parse/new
