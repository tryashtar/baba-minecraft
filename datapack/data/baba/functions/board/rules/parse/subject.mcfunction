# subject noun
# valid follows: not, and, infix, verb
scoreboard players add text_id baba 1
scoreboard players operation @s[scores={text_id=0}] text_id = text_id baba
execute store result storage baba:main text_id int 1 run scoreboard players get @s text_id

data modify entity @s data.parsing.rules[].text append from storage baba:main text_id
data modify entity @s data.parsing.rules append from entity @s data.parsing.rules[0]
data modify entity @s data.parsing.rules[-1].subject.sprite set from entity @s data.text
data modify entity @s data.parsing.rules[-1].subject.inverted set from entity @s data.parsing.inverted
data modify entity @s data.parsing.inverted set value 0b

data modify storage baba:main parsing set from entity @s data.parsing
execute positioned ^ ^ ^1 as @e[type=marker,tag=baba.object,distance=..0.1,nbt={data:{sprite:"text"}}] run data modify entity @s data.parsing set from storage baba:main parsing

execute positioned ^ ^ ^1 as @e[type=marker,tag=baba.object,tag=part.not,distance=..0.1] run function baba:board/rules/parse/infix_nots
execute positioned ^ ^ ^1 as @e[type=marker,tag=baba.object,tag=part.and,distance=..0.1] run function baba:board/rules/parse/subject_ands
execute positioned ^ ^ ^1 as @e[type=marker,tag=baba.object,tag=part.infix,distance=..0.1] run function baba:board/rules/parse/infix
execute positioned ^ ^ ^1 as @e[type=marker,tag=baba.object,tag=part.verb,distance=..0.1] run function baba:board/rules/parse/verb
