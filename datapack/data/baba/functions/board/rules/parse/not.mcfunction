data modify storage baba:main rule set from entity @s data.rule
execute store success storage baba:main rule.inverted byte 1 unless data storage baba:main rule{inverted:1b}
execute positioned ^ ^ ^1 as @e[type=marker,tag=baba.object,tag=part.not,distance=..0.1] run data modify entity @s data.rule set from storage baba:main rule
execute positioned ^ ^ ^1 as @e[type=marker,tag=baba.object,tag=part.not,distance=..0.1] run function baba:board/rules/parse/not
execute if entity @s[nbt={data:{rule:{state:"start"}}}] 