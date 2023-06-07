tag @e[type=item_display,tag=current_word] add all_rules
tag @e[type=item_display,tag=current_not] add all_rules
tag @e[type=item_display,tag=current_not] remove current_not
data modify storage baba:main parsing.rules2[].text_ids append from storage baba:main parsing.word_ids[]
data modify storage baba:main parsing.rules2[].text_ids append from storage baba:main parsing.not_ids[]
data modify storage baba:main parsing.not_ids set value []
data modify storage baba:main parsing.rules2[].conditions[-1].parameters append value {}
execute store result storage baba:main parsing.rules2[].conditions[-1].parameters[-1].text int 1 run scoreboard players get word baba
data modify storage baba:main parsing.rules2[].conditions[-1].parameters[-1].text_text set from storage baba:main parsing.word_text
data modify storage baba:main parsing.rules2[].conditions[-1].parameters[-1].inverted set from storage baba:main parsing.inverted
data modify storage baba:main parsing.inverted set value 0b

execute if score word baba matches 583 run data modify storage baba:main parsing.rules2[].conditions[-1].parameters[-1].direction set value 1
execute if score word baba matches 90302 run data modify storage baba:main parsing.rules2[].conditions[-1].parameters[-1].direction set value 2
execute if score word baba matches 240023 run data modify storage baba:main parsing.rules2[].conditions[-1].parameters[-1].direction set value 3
execute if score word baba matches 9748424 run data modify storage baba:main parsing.rules2[].conditions[-1].parameters[-1].direction set value 4

data modify storage baba:main parsing.state set value {noun:"none",verb:"ready",property:"none",and:"parameter",not:"none",prefix:"none",infix:"none"}
