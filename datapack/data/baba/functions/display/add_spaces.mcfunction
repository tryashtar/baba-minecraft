data modify storage baba:main text append value '{"translate":"baba.empty_tile"}'
data modify storage baba:main after_text append value '{"translate":"baba.overlay"}'
scoreboard players remove draw_column baba 1
execute if score draw_column baba > column baba run function baba:display/add_spaces
