scoreboard players add text_batch baba 1
data modify storage baba:main parsing append value {text:[]}
data modify storage baba:main parsing[-1].subject.sprite set from entity @s data.text
execute store result storage baba:main parsing[-1].batch int 1 run scoreboard players get text_batch baba
function baba:board/rules/parse/before_verb/track_text
