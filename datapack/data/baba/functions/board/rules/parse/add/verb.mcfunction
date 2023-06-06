data modify storage baba:main parsing.rules3 append from storage baba:main parsing.rules2
data modify storage baba:main parsing.rules3[-1][].text_ids append from storage baba:main parsing.ids[]
execute store result storage baba:main parsing.rules3[-1][].verb int 1 run scoreboard players get word baba
data modify storage baba:main parsing.rules3[-1][].verb_text set from storage baba:main parsing.word_text

data modify storage baba:main parsing.state set value {noun:"effect",verb:"none",property:"ready",and:"none",not:"effect",prefix:"none",infix:"none"}
