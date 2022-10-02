# parse left-to-right text
# positional context alone is not enough to parse text, so we actually have to teleport something around
tag @e[type=marker,tag=baba.object,tag=text_used] remove text_used
execute rotated 180 0 positioned ^ ^ ^1 run function baba:board/rules/parse/affected
tp @s ~ ~ ~
execute rotated 0 0 run function baba:board/rules/parse/effects
execute if data storage baba:main noun_collection[0][0] if data storage baba:main effect_collection[0] run function baba:board/rules/split
tp @s ~ ~ ~

# parse up-to-down text
tag @e[type=marker,tag=baba.object,tag=text_used] remove text_used
execute rotated 270 0 positioned ^ ^ ^1 run function baba:board/rules/parse/affected
tp @s ~ ~ ~
execute rotated 90 0 run function baba:board/rules/parse/effects
execute if data storage baba:main noun_collection[0][0] if data storage baba:main effect_collection[0] run function baba:board/rules/split
tp @s ~ ~ ~
