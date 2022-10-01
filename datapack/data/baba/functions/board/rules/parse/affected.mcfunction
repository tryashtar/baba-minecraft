# parse the subject of a rule, with all conditions
# we have to parse backwards since we're starting at the verb
data modify storage baba:main infix_collection set value []
function baba:board/rules/parse/infix_collection

# if the rule is of the form 'A infix B is C', then A is the subject, so we need to parse A
# if the rule is of the form 'A is C', then there are no infixes, but conveniently we already parsed nouns while looking for them
execute if data storage baba:main infix_collection[0] run data modify storage baba:main noun_collection set value []
execute if data storage baba:main infix_collection[0] positioned as @s positioned ^ ^ ^1 run function baba:board/rules/parse/noun_collection

data modify storage baba:main prefix_collection set value []
execute positioned as @s positioned ^ ^ ^1 run function baba:board/rules/parse/prefix_collection
