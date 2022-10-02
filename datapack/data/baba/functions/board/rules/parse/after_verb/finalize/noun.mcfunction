scoreboard players set found baba 1
function baba:board/rules/parse/after_verb/track_text
data modify storage baba:main pending_rules[].effect set value {}
data modify storage baba:main pending_rules[].text append from storage baba:main parsing_text[]
data modify storage baba:main pending_rules[].effect.sprite set from entity @s data.text
data modify storage baba:main pending_rules[].effect.type set value "noun"
execute store result storage baba:main pending_rules[].effect.inverted byte 1 run scoreboard players get inverted baba
data modify storage baba:main rules append from storage baba:main pending_rules[]
data modify storage baba:main batches set value []
data modify storage baba:main batches append from storage baba:main pending_rules[].batch
function baba:board/rules/parse/after_verb/finalize/update_batches
