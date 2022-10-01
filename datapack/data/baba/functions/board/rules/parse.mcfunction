data modify storage baba:main rule set value {}
data modify storage baba:main rule.verb set from entity @s data.text
summon marker ~ ~ ~ {Tags:["text_parser"]}

execute as @e[type=marker,tag=text_parser,distance=..0.1,limit=1] rotated 180 0 positioned ^ ^ ^1 run function baba:board/rules/parse/affected
tp @e[type=marker,tag=text_parser,limit=1] ~ ~ ~
execute as @e[type=marker,tag=text_parser,distance=..0.1,limit=1] rotated 0 0 run function baba:board/rules/parse/effects
data modify storage baba:main rule.conditions set from storage baba:main prefix_collection
data modify storage baba:main rule.conditions append from storage baba:main infix_collection[]
data modify storage baba:main rule.affected set value []
data modify storage baba:main rule.affected append from storage baba:main noun_collection[][]
data modify storage baba:main rule.effects set from storage baba:main effect_collection
execute if data storage baba:main rule.affected[0] if data storage baba:main rule.effects[0] run data modify storage baba:main rules append from storage baba:main rule

tp @e[type=marker,tag=text_parser,limit=1] ~ ~ ~
execute as @e[type=marker,tag=text_parser,distance=..0.1,limit=1] rotated 270 0 positioned ^ ^ ^1 run function baba:board/rules/parse/affected
tp @e[type=marker,tag=text_parser,limit=1] ~ ~ ~
execute as @e[type=marker,tag=text_parser,distance=..0.1,limit=1] rotated 0 0 run function baba:board/rules/parse/effects
data modify storage baba:main rule.conditions set from storage baba:main prefix_collection
data modify storage baba:main rule.conditions append from storage baba:main infix_collection[]
data modify storage baba:main rule.affected set value []
data modify storage baba:main rule.affected append from storage baba:main noun_collection[][]
data modify storage baba:main rule.effects set from storage baba:main effect_collection
execute if data storage baba:main rule.affected[0] if data storage baba:main rule.effects[0] run data modify storage baba:main rules append from storage baba:main rule

kill @e[type=marker,tag=text_parser,limit=1]
