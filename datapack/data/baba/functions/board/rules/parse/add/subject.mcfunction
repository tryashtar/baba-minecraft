tag @e[type=item_display,tag=baba.object,tag=current_word] add subject_rules
tag @e[type=item_display,tag=baba.object,tag=current_not] add subject_rules
tag @e[type=item_display,tag=baba.object,tag=current_not] remove current_not
data modify storage baba:main parsing.rules2 append from storage baba:main parsing.rules1
data modify storage baba:main parsing.rules2[-1].text_ids append from storage baba:main parsing.word_ids[]
data modify storage baba:main parsing.rules2[-1].text_ids append from storage baba:main parsing.not_ids[]
data modify storage baba:main parsing.not_ids set value []
execute store result storage baba:main parsing.rules2[-1].subject.sprite int 1 run scoreboard players get word baba
data modify storage baba:main parsing.rules2[-1].subject.sprite_text set from storage baba:main parsing.word_text
data modify storage baba:main parsing.rules2[-1].subject.inverted set from storage baba:main parsing.inverted
data modify storage baba:main parsing.inverted set value 0b

data modify storage baba:main parsing.state set value {noun:"none",verb:"ready",property:"none",and:"subject",not:"infix",prefix:"none",infix:"ready"}
