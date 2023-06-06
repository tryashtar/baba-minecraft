data modify storage baba:main parsing.effects append value {}
data modify storage baba:main parsing.effects[-1].text append from storage baba:main id[]
execute store result storage baba:main parsing.effects[-1].verb int 1 run scoreboard players get word baba
data modify storage baba:main parsing.effects[-1].verb_text set from storage baba:main word

data modify storage baba:main parsing.state set value {noun:"effect",verb:"none",property:"ready",and:"none",not:"effect",prefix:"none",infix:"none"}
