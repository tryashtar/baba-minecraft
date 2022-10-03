# parse left-to-right text
# positional context alone is not enough to parse text, so we actually have to teleport something around
tag @e[type=marker,tag=baba.object,tag=text_used] remove text_used
scoreboard players set text_batch baba -1
function baba:board/rules/parse/before_verb/track_text
data modify storage baba:main pending_rules set value []
execute rotated 180 0 positioned ^ ^ ^1 run function baba:board/rules/parse/before_verb
tp @s ~ ~ ~
execute if data storage baba:main pending_rules[0] rotated 0 0 run function baba:board/rules/parse/after_verb
tp @s ~ ~ ~

# parse up-to-down text
tag @e[type=marker,tag=baba.object,tag=text_used] remove text_used
scoreboard players set text_batch baba -1
function baba:board/rules/parse/before_verb/track_text
data modify storage baba:main pending_rules set value []
execute rotated 270 0 positioned ^ ^ ^1 run function baba:board/rules/parse/before_verb
tp @s ~ ~ ~
execute if data storage baba:main pending_rules[0] rotated 90 0 run function baba:board/rules/parse/after_verb
tp @s ~ ~ ~
