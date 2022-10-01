data modify storage baba:main rule set value {}
data modify storage baba:main rule.verb set from entity @s data.text
summon marker ~ ~ ~ {UUID:[I;-1339317108,-1113635520,-1794750000,-1898357304]}

execute as b02ba48c-bd9f-4540-9506-49d08ed95dc8 rotated 180 0 positioned ^ ^ ^1 run function baba:board/rules/parse/affected
tp b02ba48c-bd9f-4540-9506-49d08ed95dc8 ~ ~ ~
execute as b02ba48c-bd9f-4540-9506-49d08ed95dc8 rotated 0 0 run function baba:board/rules/parse/effects
data modify storage baba:main rule.conditions set from storage baba:main prefix_collection
data modify storage baba:main rule.conditions append from storage baba:main infix_collection[]
data modify storage baba:main rule.affected set value []
data modify storage baba:main rule.affected append from storage baba:main noun_collection[][]
data modify storage baba:main rule.effects set from storage baba:main effect_collection
execute if data storage baba:main rule.affected[0] if data storage baba:main rule.effects[0] run data modify storage baba:main rules append from storage baba:main rule

tp b02ba48c-bd9f-4540-9506-49d08ed95dc8 ~ ~ ~
execute as b02ba48c-bd9f-4540-9506-49d08ed95dc8 rotated 270 0 positioned ^ ^ ^1 run function baba:board/rules/parse/affected
tp b02ba48c-bd9f-4540-9506-49d08ed95dc8 ~ ~ ~
execute as b02ba48c-bd9f-4540-9506-49d08ed95dc8 rotated 0 0 run function baba:board/rules/parse/effects
data modify storage baba:main rule.conditions set from storage baba:main prefix_collection
data modify storage baba:main rule.conditions append from storage baba:main infix_collection[]
data modify storage baba:main rule.affected set value []
data modify storage baba:main rule.affected append from storage baba:main noun_collection[][]
data modify storage baba:main rule.effects set from storage baba:main effect_collection
execute if data storage baba:main rule.affected[0] if data storage baba:main rule.effects[0] run data modify storage baba:main rules append from storage baba:main rule

kill b02ba48c-bd9f-4540-9506-49d08ed95dc8
