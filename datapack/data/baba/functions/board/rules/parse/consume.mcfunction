data modify storage baba:main parsing set from storage baba:main parsing_stack[-1]
data remove storage baba:main parsing_stack[-1]
execute if score @s letter matches 1.. run function baba:board/rules/parse/consume_letter
execute unless score @s letter matches 1.. run function baba:board/rules/parse/consume_word

execute if data storage baba:main parsing{finished:1b,complete:1b} run function baba:board/rules/parse/finish
execute unless data storage baba:main parsing{finished:1b} if data storage baba:main parsing{complete:1b} positioned ^ ^ ^1 unless entity @e[type=item_display,tag=baba.object,tag=reparse,distance=..0.1,limit=1] run function baba:board/rules/parse/finish
execute unless data storage baba:main parsing{finished:1b} positioned ^ ^ ^1 as @e[type=item_display,tag=baba.object,tag=reparse,distance=..0.1] run data modify storage baba:main parsing_stack append from storage baba:main parsing
execute unless data storage baba:main parsing{finished:1b} positioned ^ ^ ^1 as @e[type=item_display,tag=baba.object,tag=reparse,distance=..0.1] run function baba:board/rules/parse/consume
