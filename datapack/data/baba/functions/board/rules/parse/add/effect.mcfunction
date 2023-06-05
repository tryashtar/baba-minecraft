data modify storage baba:main parsing.effects[-1].effects append value {}
execute store result storage baba:main parsing.effects[-1].effects[-1].sprite int 1 run scoreboard players get word baba
data modify storage baba:main parsing.effects[-1].effects[-1].sprite_text set from storage baba:main word
data modify storage baba:main parsing.effects[-1].effects[-1].inverted set from storage baba:main parsing.inverted
data modify storage baba:main parsing.inverted set value 0b

data modify storage baba:main parsing.state set value {noun:"none",verb:"none",property:"none",and:"effect",not:"none",prefix:"none",infix:"none"}
