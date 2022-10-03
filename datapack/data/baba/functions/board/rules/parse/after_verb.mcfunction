data modify storage baba:main verb set from entity @s data.text
data modify storage baba:main incoming_rules set value []
function baba:board/rules/parse/after_verb/effects
execute store result score incoming baba run data get storage baba:main incoming_rules
scoreboard players operation @e[type=marker,tag=baba.object,scores={text_batch=-3}] text_used += incoming baba
execute as @e[type=marker,tag=baba.object,scores={text_batch=-3}] run function baba:board/rules/parse/after_verb/append_text
data modify storage baba:main rules append from storage baba:main incoming_rules[]
