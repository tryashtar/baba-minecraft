data modify storage baba:main parsing.complete set value 1b
data modify storage baba:main parsing.rules3 append from storage baba:main parsing.rules2
data modify storage baba:main parsing.rules3[-1][].text_ids append from storage baba:main parsing.ids[]
data modify storage baba:main parsing.rules3[-1][].text_ids append from storage baba:main parsing.not_ids[]
data modify storage baba:main parsing.rules3[-1][].text_ids append from storage baba:main parsing.verb_ids[]
data modify storage baba:main parsing.not_ids set value []
data modify storage baba:main parsing.verb_ids set value []
data modify storage baba:main parsing.rules3[-1][].verb set from storage baba:main parsing.verb
data modify storage baba:main parsing.rules3[-1][].verb_text set from storage baba:main parsing.verb_text
execute store result storage baba:main parsing.rules3[-1][].effect.text int 1 run scoreboard players get word baba
data modify storage baba:main parsing.rules3[-1][].effect.text_text set from storage baba:main parsing.word_text
data modify storage baba:main parsing.rules3[-1][].effect.inverted set from storage baba:main parsing.inverted
data modify storage baba:main parsing.inverted set value 0b

data modify storage baba:main parsing.state set value {noun:"none",verb:"none",property:"none",and:"effect",not:"none",prefix:"none",infix:"none"}
