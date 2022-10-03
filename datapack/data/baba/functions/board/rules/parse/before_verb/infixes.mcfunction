# parse infix phrases
# each is a (possibly inverted) infix, followed by a noun collection, then more infix phrases separated by ands
tp @s ~ ~ ~
data modify storage baba:main infix_nouns set value []
function baba:board/rules/parse/before_verb/infix_nouns
data modify storage baba:main parsing set value []
scoreboard players set inverted baba 0
execute positioned as @s run tp @s ^ ^ ^1
execute positioned as @s as @e[type=marker,tag=baba.object,tag=part.infix,distance=..0.1] run function baba:board/rules/parse/before_verb/append/condition
execute positioned as @s positioned ^ ^ ^1 if entity @e[type=marker,tag=baba.object,tag=part.operator,distance=..0.1,nbt={data:{text:"not"}},limit=1] run function baba:board/rules/parse/before_verb/handle_nots
execute if data storage baba:main parsing[0] store result storage baba:main parsing[].inverted byte 1 run scoreboard players get inverted baba
execute if data storage baba:main parsing[0] run data modify storage baba:main parsing[].value set from storage baba:main infix_nouns
execute if data storage baba:main parsing[0] positioned as @s positioned ^ ^ ^1 as @e[type=marker,tag=baba.object,tag=part.operator,distance=..0.1,nbt={data:{text:"and"}},limit=1] run function baba:board/rules/parse/before_verb/track_text
execute if data storage baba:main parsing[0] run data modify storage baba:main conditions append from storage baba:main parsing
execute if data storage baba:main parsing[0] positioned as @s positioned ^ ^ ^1 if entity @e[type=marker,tag=baba.object,tag=part.operator,distance=..0.1,nbt={data:{text:"and"}},limit=1] positioned ^ ^ ^1 run function baba:board/rules/parse/before_verb/infixes
