data modify storage baba:main text append value '{"translate":"baba.empty_tile"}'
scoreboard players remove column baba 1
execute if score column baba > last_column baba run function baba:display/add_empty
