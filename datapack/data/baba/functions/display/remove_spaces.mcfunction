say rem
data modify storage baba:main text append value '{"translate":"baba.overlay"}'
scoreboard players add draw_column baba 1
execute if score draw_column baba < column baba run function baba:display/remove_spaces
