# split a rule with multiple subjects or effects into individual rules with one each
function baba:board/rules/parse/track
data modify storage baba:main subjects set value []
data modify storage baba:main subjects append from storage baba:main noun_collection[][]
data modify storage baba:main conditions set from storage baba:main prefix_collection
data modify storage baba:main conditions append from storage baba:main infix_collection[]
data modify storage baba:main effects set from storage baba:main effect_collection
function baba:board/rules/split_loop
