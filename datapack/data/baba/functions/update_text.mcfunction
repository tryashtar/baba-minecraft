data modify storage baba:main text set value []
execute if score anim baba matches 0 run function baba:update_text_0
execute if score anim baba matches 1 run function baba:update_text_1
execute if score anim baba matches 2 run function baba:update_text_2
bossbar set baba:main name {"nbt":"text[]","storage":"baba:main","interpret":true,"separator":"","font":"baba:main"}
