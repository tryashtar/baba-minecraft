function baba:board/rules/parse/after_verb/track_text
data modify storage baba:main pending_rules[].effect set value {text:[]}
data modify storage baba:main pending_rules[].effect.text append from storage baba:main parsing_text[]
data modify storage baba:main pending_rules[].effect.property set from entity @s data.text
execute store result storage baba:main pending_rules[].effect.inverted byte 1 run scoreboard players get inverted baba
data modify storage baba:main rules append from storage baba:main pending_rules[]
