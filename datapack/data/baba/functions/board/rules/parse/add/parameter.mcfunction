data modify storage baba:main parsing.conditions[-1].parameters append value {}
execute store result storage baba:main parsing.conditions[-1].parameters[-1].sprite int 1 run scoreboard players get word baba
data modify storage baba:main parsing.conditions[-1].parameters[-1].sprite_text set from storage baba:main word
data modify storage baba:main parsing.conditions[-1].parameters[-1].inverted set from storage baba:main parsing.inverted
data modify storage baba:main parsing.inverted set value 0b

data modify storage baba:main parsing.state set value {noun:"none",verb:"ready",property:"none",and:"parameter",not:"none",prefix:"none",infix:"none"}
