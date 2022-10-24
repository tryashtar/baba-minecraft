# verb
# valid follows: not, property, noun
scoreboard players add text_id baba 1
scoreboard players operation @s[scores={text_id=0}] text_id = text_id baba
tag @e[type=marker,tag=baba.object,tag=last_verb] remove last_verb
tag @s add last_verb
data modify storage baba:main parsing set from entity @s data.parsing

execute if data storage baba:main parsing{split:0b} run data remove storage baba:main parsing.rules[0]
execute if data storage baba:main parsing{split:0b} run data modify storage baba:main parsing.split_rules set from storage baba:main parsing.rules
execute if data storage baba:main parsing{split:0b} run data modify storage baba:main parsing.rules set value []
execute if data storage baba:main parsing{split:0b} run data modify storage baba:main parsing.rules append from storage baba:main parsing.split_rules
execute if data storage baba:main parsing{split:0b} run data modify storage baba:main parsing.rules append from storage baba:main parsing.split_rules
execute if data storage baba:main parsing{split:1b} run data modify storage baba:main parsing.rules append from storage baba:main parsing.rules[0]
execute store result storage baba:main parsing.rules[-1][].text int 1 run scoreboard players get @s text_id
execute store result storage baba:main parsing.rules[-1][].verb int 1 run scoreboard players get @s text
data modify storage baba:main parsing.split set value 1b

execute positioned ^ ^ ^1 as @e[type=marker,tag=baba.object,scores={sprite=30442},distance=..0.1] run data modify entity @s data.parsing set from storage baba:main parsing

execute positioned ^ ^ ^1 as @e[type=marker,tag=baba.object,tag=part.not,distance=..0.1] run function baba:board/rules/parse/effect_nots
execute if entity @s[tag=accepts_property] positioned ^ ^ ^1 as @e[type=marker,tag=baba.object,tag=part.property,distance=..0.1] run function baba:board/rules/parse/effect
execute if entity @s[tag=accepts_noun] positioned ^ ^ ^1 as @e[type=marker,tag=baba.object,tag=part.noun,distance=..0.1] run function baba:board/rules/parse/effect
execute if entity @s[tag=accepts_property,tag=accepts_noun] positioned ^ ^ ^1 as @e[type=marker,tag=baba.object,scores={sprite=30442},tag=!part.not,tag=!part.property,tag=!part.noun,distance=..0.1] run function baba:board/rules/parse/new
execute if entity @s[tag=accepts_property,tag=!accepts_noun] positioned ^ ^ ^1 as @e[type=marker,tag=baba.object,scores={sprite=30442},tag=!part.not,tag=!part.property,distance=..0.1] run function baba:board/rules/parse/new
execute if entity @s[tag=!accepts_property,tag=accepts_noun] positioned ^ ^ ^1 as @e[type=marker,tag=baba.object,scores={sprite=30442},tag=!part.not,distance=..0.1] run function baba:board/rules/parse/new
