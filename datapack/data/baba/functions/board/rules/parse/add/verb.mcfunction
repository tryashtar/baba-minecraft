tag @e[type=item_display,tag=last_verb] remove last_verb
tag @e[type=item_display,tag=current_word] add last_verb
data modify storage baba:main parsing.verb_ids append from storage baba:main parsing.word_ids[]
execute store result storage baba:main parsing.verb int 1 run scoreboard players get word baba
data modify storage baba:main parsing.verb_text set from storage baba:main parsing.word_text

data modify storage baba:main parsing.state set value {noun:"effect",verb:"none",property:"ready",and:"none",not:"effect",prefix:"none",infix:"none"}
