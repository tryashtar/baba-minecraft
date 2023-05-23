data modify storage baba:main level_name set value '""'
execute at @s as @e[type=item_display,tag=baba.object,distance=..0.1,nbt={item:{tag:{level_data:{}}}},limit=1] run function baba:progress/get_name
data modify entity @e[type=text_display,tag=baba.text,limit=1] text set value '[{"storage":"baba:main","nbt":"level_name","interpret":true,"font":"baba:font"},"\\n\\ue000"]'
