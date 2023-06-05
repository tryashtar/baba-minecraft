data modify storage baba:main parsing.subject.inverted set from storage baba:main parsing.inverted
data modify storage baba:main parsing.inverted set value 0b
data modify storage baba:main parsing.subject.sprite_text set from entity @s item.tag.text
execute store result storage baba:main parsing.subject.sprite int 1 run scoreboard players get word baba
