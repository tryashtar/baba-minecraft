# parse effect phrases
# it's a list of (possibly inverted) nouns and properties, separated by ands
tp @s ~ ~ ~
scoreboard players set found baba 0
scoreboard players set inverted baba 0
scoreboard players set @e[type=marker,tag=baba.object,scores={text_batch=-2}] text_batch 0
data modify storage baba:main parsing_text set value []
execute positioned ^ ^ ^1 if entity @e[type=marker,tag=baba.object,tag=part.operator,distance=..0.1,nbt={data:{text:"not"}}] run function baba:board/rules/parse/after_verb/handle_nots
execute positioned as @s positioned ^ ^ ^1 as @e[type=marker,tag=baba.object,tag=part.noun,distance=..0.1] run function baba:board/rules/parse/after_verb/finalize/noun
# only 'is' and 'write' support properties
execute if data storage baba:main {verb:"is"} positioned as @s positioned ^ ^ ^1 as @e[type=marker,tag=baba.object,tag=part.property,distance=..0.1] run function baba:board/rules/parse/after_verb/finalize/property
execute if data storage baba:main {verb:"write"} positioned as @s positioned ^ ^ ^1 as @e[type=marker,tag=baba.object,tag=part.property,distance=..0.1] run function baba:board/rules/parse/after_verb/finalize/property
execute positioned as @s positioned ^ ^ ^2 as @e[type=marker,tag=baba.object,tag=part.operator,distance=..0.1,nbt={data:{text:"and"}},limit=1] run function baba:board/rules/parse/after_verb/track_text2
execute if score found baba matches 1 positioned as @s positioned ^ ^ ^2 if entity @e[type=marker,tag=baba.object,tag=part.operator,distance=..0.1,nbt={data:{text:"and"}},limit=1] run function baba:board/rules/parse/after_verb/effects
