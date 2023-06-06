tag @e[type=item_display,tag=current_word] add all_rules
tag @e[type=item_display,tag=current_not] add all_rules
tag @e[type=item_display,tag=current_not] remove current_not
data modify storage baba:main parsing.rules2[].text_ids append from storage baba:main parsing.word_ids[]
data modify storage baba:main parsing.rules2[].text_ids append from storage baba:main parsing.not_ids[]
data modify storage baba:main parsing.not_ids set value []
data modify storage baba:main parsing.rules2[].conditions append value {}
execute store result storage baba:main parsing.rules2[].conditions[-1].condition int 1 run scoreboard players get word baba
data modify storage baba:main parsing.rules2[].conditions[-1].condition_text set from storage baba:main parsing.word_text
data modify storage baba:main parsing.rules2[].conditions[-1].inverted set from storage baba:main parsing.inverted
data modify storage baba:main parsing.inverted set value 0b

data modify storage baba:main parsing.state set value {noun:"parameter",verb:"none",property:"none",and:"none",not:"parameter",prefix:"none",infix:"none"}
