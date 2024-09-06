data modify storage baba:main parsing set from storage baba:main parsing_stack[-1]
data remove storage baba:main parsing_stack[-1]
scoreboard players set parsed baba 0
execute if entity @s[tag=part.letter] run function baba:board/rules/parse/consume_letter
execute if entity @s[tag=!part.letter] run function baba:board/rules/parse/consume_word

execute if entity @s[tag=first_word] if data storage baba:main parsing{unexpected:1b} positioned ^ ^ ^1 run tag @e[type=item_display,tag=baba.object,tag=reparse,distance=..0.1] add first_word
execute if data storage baba:main parsing{unexpected:1b} run tag @e[type=item_display,tag=baba.object,tag=current_not,sort=furthest,limit=1] add first_word
execute if data storage baba:main parsing{unexpected:1b} unless entity @e[type=item_display,tag=baba.object,tag=current_not,limit=1] run tag @e[type=item_display,tag=baba.object,tag=current_word,sort=furthest,limit=1] add first_word
execute if data storage baba:main parsing{complete:1b,unexpected:1b} run function baba:board/rules/parse/finish
execute if data storage baba:main parsing{complete:1b} unless data storage baba:main parsing{unexpected:1b} positioned ^ ^ ^1 unless entity @e[type=item_display,tag=baba.object,tag=reparse,distance=..0.1,limit=1] run function baba:board/rules/parse/finish

# text stacking requires us to evaluate the current parsing context once for each word in the tile
# however, by the time the first one is done, the context will have changed and the old one will be lost
# therefore, we maintain an explicit stack of context, with each word pushing before its turn and popping during
execute unless data storage baba:main parsing{unexpected:1b} positioned ^ ^ ^1 as @e[type=item_display,tag=baba.object,tag=reparse,distance=..0.1] run data modify storage baba:main parsing_stack append from storage baba:main parsing
execute if score parsed baba matches 2 positioned ^ ^ ^1 as @e[type=item_display,tag=baba.object,tag=reparse,tag=part.letter,distance=..0.1] run data modify storage baba:main parsing_stack append from storage baba:main alt_parsing
execute if score parsed baba matches 2 positioned ^ ^ ^1 as @e[type=item_display,tag=baba.object,tag=reparse,tag=part.letter,distance=..0.1] run function baba:board/rules/parse/consume
execute unless data storage baba:main parsing{unexpected:1b} positioned ^ ^ ^1 as @e[type=item_display,tag=baba.object,tag=reparse,distance=..0.1] run function baba:board/rules/parse/consume
