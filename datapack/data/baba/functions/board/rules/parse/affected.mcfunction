data modify storage baba:main infix_collection set value []
function baba:board/rules/parse/infix_collection

execute if data storage baba:main infix_collection[0] run data modify storage baba:main noun_collection set value []
execute if data storage baba:main infix_collection[0] positioned as @s positioned ^ ^ ^1 run function baba:board/rules/parse/noun_collection

data modify storage baba:main prefix_collection set value []
execute positioned as @s positioned ^ ^ ^1 run function baba:board/rules/parse/prefix_collection
