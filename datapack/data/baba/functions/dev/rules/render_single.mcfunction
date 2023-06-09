data modify entity @s text set value '{"storage":"baba:main","nbt":"rule[]","separator":""}'
data modify storage baba:main text_rules append from entity @s text
kill @s
