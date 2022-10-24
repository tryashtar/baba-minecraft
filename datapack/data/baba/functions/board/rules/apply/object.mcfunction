execute if data storage baba:main rule{verb:206,effect:{part:"property"}} run data modify entity @s data.properties append from storage baba:main rule.effect
execute if data storage baba:main rule{verb:206,effect:{part:"noun"}} run data modify entity @s data.transforms append from storage baba:main rule.effect
execute if data storage baba:main rule{verb:206,effect:{part:"noun"}} run data modify entity @s data.transforms[-1].verb set value 206
execute if data storage baba:main rule{verb:45138} run data modify entity @s data.transforms append from storage baba:main rule.effect
execute if data storage baba:main rule{verb:45138} run data modify entity @s data.transforms[-1].verb set value 45138
execute if data storage baba:main rule{verb:46949} run data modify entity @s data.has append from storage baba:main rule.effect
execute if data storage baba:main rule{verb:441} run data modify entity @s data.make append from storage baba:main rule.effect
