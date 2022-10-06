execute if data storage baba:main rule{verb:"is",effect:{part:"property"}} as @e[type=marker,tag=baba.object,tag=affected] run data modify entity @s data.properties append from storage baba:main rule.effect
execute if data storage baba:main rule{verb:"is",effect:{part:"noun"}} as @e[type=marker,tag=baba.object,tag=affected] run data modify entity @s data.transforms append from storage baba:main rule.effect
execute if data storage baba:main rule{verb:"is",effect:{part:"noun"}} as @e[type=marker,tag=baba.object,tag=affected] run data modify entity @s data.transforms[-1].verb set value "is"
execute if data storage baba:main rule{verb:"write"} as @e[type=marker,tag=baba.object,tag=affected] run data modify entity @s data.transforms append from storage baba:main rule.effect
execute if data storage baba:main rule{verb:"write"} as @e[type=marker,tag=baba.object,tag=affected] run data modify entity @s data.transforms[-1].verb set value "write"
execute if data storage baba:main rule{verb:"has"} as @e[type=marker,tag=baba.object,tag=affected] run data modify entity @s data.has append from storage baba:main rule.effect
execute if data storage baba:main rule{verb:"make"} as @e[type=marker,tag=baba.object,tag=affected] run data modify entity @s data.make append from storage baba:main rule.effect
