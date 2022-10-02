# parse effect phrases
# it's a list of (possibly inverted) nouns and properties, separated by ands
tp @s ~ ~ ~
scoreboard players set found baba 0
scoreboard players set inverted baba 0
data modify storage baba:main parsing_text set value []
execute positioned ^ ^ ^1 if entity @e[type=marker,tag=baba.object,tag=part.operator,distance=..0.1,nbt={data:{text:"not"}}] run function baba:board/rules/parse/after_verb/handle_nots
execute positioned as @s positioned ^ ^ ^2 as @e[type=marker,tag=baba.object,tag=part.operator,distance=..0.1,nbt={data:{text:"and"}},limit=1] run function baba:board/rules/parse/after_verb/track_text
execute positioned as @s positioned ^ ^ ^1 as @e[type=marker,tag=baba.object,tag=part.noun,distance=..0.1] run function baba:board/rules/parse/after_verb/finalize/noun
# only 'is' and 'write' support properties
execute positioned as @s[nbt={data:{text:"is"}}] positioned ^ ^ ^1 as @e[type=marker,tag=baba.object,tag=part.property,distance=..0.1] run function baba:board/rules/parse/after_verb/finalize/property
execute positioned as @s[nbt={data:{text:"write"}}] positioned ^ ^ ^1 as @e[type=marker,tag=baba.object,distance=..0.1] run function baba:board/rules/parse/after_verb/finalize/property
execute if score found baba matches 1 positioned as @s positioned ^ ^ ^2 if entity @e[type=marker,tag=baba.object,tag=part.operator,distance=..0.1,nbt={data:{text:"and"}},limit=1] run function baba:board/rules/parse/after_verb/effects
