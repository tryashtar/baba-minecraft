execute if data storage baba:main rule{verb:"is",effect:{type:"property"}} as @e[type=marker,tag=baba.object,tag=affected] run data modify entity @s data.properties append from storage baba:main rule.effect
execute if data storage baba:main rule{verb:"is",effect:{type:"noun"}} as @e[type=marker,tag=baba.object,tag=affected] run data modify entity @s data.transforms append from storage baba:main rule.effect
execute if data storage baba:main rule{verb:"write"} as @e[type=marker,tag=baba.object,tag=affected] run data modify entity @s data.transforms append from storage baba:main rule.effect
execute if data storage baba:main rule{verb:"has"} as @e[type=marker,tag=baba.object,tag=affected] run data modify entity @s data.has append from storage baba:main rule.effect
execute if data storage baba:main rule{verb:"make"} as @e[type=marker,tag=baba.object,tag=affected] run data modify entity @s data.make append from storage baba:main rule.effect
