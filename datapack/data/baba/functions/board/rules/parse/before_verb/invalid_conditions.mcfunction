data modify storage baba:main conditions set value []
scoreboard players set @e[type=marker,tag=!part.verb,scores={text_batch=-1}] text_batch 0
function baba:board/rules/parse/before_verb/subjects
