# parse effect phrases
# it's a list of (possibly inverted) nouns and properties, separated by ands
tp @s ~ ~ ~
data modify storage baba:main effects set value []
scoreboard players set inverted baba 0
execute positioned ^ ^ ^1 if entity @e[type=marker,tag=baba.object,tag=part.operator,distance=..0.1,nbt={data:{text:"not"}}] run function baba:board/rules/parse/handle_nots
execute positioned as @s positioned ^ ^ ^1 as @e[type=marker,tag=baba.object,tag=part.noun,distance=..0.1] run function baba:board/rules/parse/append/noun_effect
# only 'is' and 'write' support properties
execute if data storage baba:main rule{verb:"is"} positioned as @s positioned ^ ^ ^1 as @e[type=marker,tag=baba.object,tag=part.property,distance=..0.1] run function baba:board/rules/parse/append/property_effect
execute if data storage baba:main rule{verb:"write"} positioned as @s positioned ^ ^ ^1 as @e[type=marker,tag=baba.object,distance=..0.1] run function baba:board/rules/parse/append/property_effect
execute if data storage baba:main effects[0] store result storage baba:main effects[].inverted byte 1 run scoreboard players get inverted baba
# unlike the other parsers, there is no meaning of 'alternatives' for effects, so the list can be flat
execute if data storage baba:main effects[0] run data modify storage baba:main effect_collection append from storage baba:main effects[]
execute if data storage baba:main effects[0] positioned as @s positioned ^ ^ ^2 if entity @e[type=marker,tag=baba.object,tag=part.operator,distance=..0.1,nbt={data:{text:"and"}},limit=1] run function baba:board/rules/parse/effect_collection
