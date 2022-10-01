data modify storage baba:main rule set value {}
data modify storage baba:main rule.verb set from entity @s data.text

# parse left-to-right text
# positional context alone is not enough to parse text, so we actually have to teleport something around
execute rotated 180 0 positioned ^ ^ ^1 run function baba:board/rules/parse/affected
tp @s ~ ~ ~
execute rotated 0 0 run function baba:board/rules/parse/effects
data modify storage baba:main rule.conditions set from storage baba:main prefix_collection
data modify storage baba:main rule.conditions append from storage baba:main infix_collection[]
data modify storage baba:main rule.affected set value []
# subjects are already alternatives, so the list can be flat
data modify storage baba:main rule.affected append from storage baba:main noun_collection[][]
data modify storage baba:main rule.effects set from storage baba:main effect_collection
execute if data storage baba:main rule.affected[0] if data storage baba:main rule.effects[0] run data modify storage baba:main rules append from storage baba:main rule

# parse up-to-down text
tp @s ~ ~ ~
execute rotated 270 0 positioned ^ ^ ^1 run function baba:board/rules/parse/affected
tp @s ~ ~ ~
execute rotated 90 0 run function baba:board/rules/parse/effects
data modify storage baba:main rule.conditions set from storage baba:main prefix_collection
data modify storage baba:main rule.conditions append from storage baba:main infix_collection[]
data modify storage baba:main rule.affected set value []
data modify storage baba:main rule.affected append from storage baba:main noun_collection[][]
data modify storage baba:main rule.effects set from storage baba:main effect_collection
execute if data storage baba:main rule.affected[0] if data storage baba:main rule.effects[0] run data modify storage baba:main rules append from storage baba:main rule

tp @s ~ ~ ~
