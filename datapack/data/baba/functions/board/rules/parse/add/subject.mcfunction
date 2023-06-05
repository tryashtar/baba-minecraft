data modify storage baba:main parsing.subjects append value {}
execute store result storage baba:main parsing.subjects[-1].sprite int 1 run scoreboard players get word baba
data modify storage baba:main parsing.subjects[-1].sprite_text set from storage baba:main word
data modify storage baba:main parsing.subjects[-1].inverted set from storage baba:main parsing.inverted
data modify storage baba:main parsing.inverted set value 0b

data modify storage baba:main parsing.state set value {noun:"none",verb:"ready",property:"none",and:"subject",not:"infix",prefix:"none",infix:"ready"}
