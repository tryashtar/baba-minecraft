# parse noun phrases
# it's a list of (possibly inverted) nouns, separated by ands
tp @s ~ ~ ~
# the nouns in this step are a list to support text stacking
# we only make one pass per verb, so it's important to capture all alternatives
data modify storage baba:main nouns set value []
scoreboard players set inverted baba 0
execute as @e[type=marker,tag=baba.object,tag=part.noun,distance=..0.1] run function baba:board/rules/parse/append/noun
execute positioned ^ ^ ^1 if entity @e[type=marker,tag=baba.object,tag=part.operator,distance=..0.1,nbt={data:{text:"not"}}] run function baba:board/rules/parse/handle_nots
execute if data storage baba:main nouns[0] store result storage baba:main nouns[].inverted byte 1 run scoreboard players get inverted baba
execute if data storage baba:main nouns[0] run data modify storage baba:main noun_collection append from storage baba:main nouns
execute if data storage baba:main nouns[0] positioned as @s positioned ^ ^ ^1 as @e[type=marker,tag=baba.object,tag=part.operator,distance=..0.1,nbt={data:{text:"and"}},limit=1] run function baba:board/rules/parse/track
execute if data storage baba:main nouns[0] positioned as @s positioned ^ ^ ^1 if entity @e[type=marker,tag=baba.object,tag=part.operator,distance=..0.1,nbt={data:{text:"and"}},limit=1] positioned ^ ^ ^1 run function baba:board/rules/parse/noun_collection
