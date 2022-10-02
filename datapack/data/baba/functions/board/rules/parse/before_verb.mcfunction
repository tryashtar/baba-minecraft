# parse the any infix conditions for the subject of the rule
# we have to parse backwards since we're starting at the verb
data modify storage baba:main conditions set value []
function baba:board/rules/parse/before_verb/infixes

# parse the subjects of the rule
execute if data storage baba:main conditions[0] positioned as @s positioned ^ ^ ^1 run function baba:board/rules/parse/before_verb/subjects

# add prefix conditions
execute positioned as @s positioned ^ ^ ^1 run function baba:board/rules/parse/before_verb/prefixes

execute if data storage baba:main pending_rules[0] run data modify storage baba:main pending_rules[].conditions set from storage baba:main conditions
