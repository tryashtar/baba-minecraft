data modify storage baba:main parsing.text_ids append from storage baba:main parsing.ids[]
data modify storage baba:main parsing.text_ids append from storage baba:main parsing.not_ids[]
data modify storage baba:main parsing.not_ids set value []
data modify storage baba:main parsing.conditions append value {}
execute store result storage baba:main parsing.conditions[-1].condition int 1 run scoreboard players get word baba
data modify storage baba:main parsing.conditions[-1].condition_text set from storage baba:main word
data modify storage baba:main parsing.conditions[-1].inverted set from storage baba:main parsing.inverted
data modify storage baba:main parsing.inverted set value 0b

data modify storage baba:main parsing.state set value {noun:"parameter",verb:"none",property:"none",and:"none",not:"parameter",prefix:"none",infix:"none"}
