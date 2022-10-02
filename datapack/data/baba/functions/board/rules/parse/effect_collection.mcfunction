# parse effect phrases
# it's a list of (possibly inverted) nouns and properties, separated by ands
tp @s ~ ~ ~
data modify storage baba:main parsing set value []
scoreboard players set inverted baba 0
execute positioned ^ ^ ^1 if entity @e[type=marker,tag=baba.object,tag=part.operator,distance=..0.1,nbt={data:{text:"not"}}] run function baba:board/rules/parse/handle_nots
execute positioned as @s positioned ^ ^ ^1 as @e[type=marker,tag=baba.object,tag=part.noun,distance=..0.1] run function baba:board/rules/parse/append/noun
# only 'is' and 'write' support properties
execute positioned as @s[nbt={data:{text:"is"}}] positioned ^ ^ ^1 as @e[type=marker,tag=baba.object,tag=part.property,distance=..0.1] run function baba:board/rules/parse/append/property
execute positioned as @s[nbt={data:{text:"write"}}] positioned ^ ^ ^1 as @e[type=marker,tag=baba.object,distance=..0.1] run function baba:board/rules/parse/append/property
execute if data storage baba:main parsing[0] store result storage baba:main parsing[].inverted byte 1 run scoreboard players get inverted baba
execute if data storage baba:main parsing[0] positioned as @s positioned ^ ^ ^2 as @e[type=marker,tag=baba.object,tag=part.operator,distance=..0.1,nbt={data:{text:"and"}},limit=1] run function baba:board/rules/parse/track
# unlike the other parsers, there is no meaning of 'alternatives' for effects, so the list can be flat
data modify storage baba:main effect_collection append from storage baba:main parsing[]
execute if data storage baba:main parsing[0] positioned as @s positioned ^ ^ ^2 if entity @e[type=marker,tag=baba.object,tag=part.operator,distance=..0.1,nbt={data:{text:"and"}},limit=1] run function baba:board/rules/parse/effect_collection
