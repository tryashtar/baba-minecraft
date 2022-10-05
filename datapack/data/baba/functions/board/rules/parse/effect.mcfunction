# effect noun or property
# valid follows: and
scoreboard players add text_id baba 1
scoreboard players operation @s[scores={text_id=0}] text_id = text_id baba
execute store result storage baba:main text_id int 1 run scoreboard players get @s text_id

data modify entity @s data.parsing.rules append from entity @s data.parsing.rules[-1]
data modify entity @s data.parsing.rules[-1][].text append from storage baba:main text_id
data modify entity @s data.parsing.rules[-1][].effect.text set from entity @s data.text
data modify entity @s data.parsing.rules[-1][].effect.inverted set from entity @s data.parsing.inverted
data modify entity @s data.parsing.inverted set value 0b

data modify storage baba:main parsing set from entity @s data.parsing
execute positioned ^ ^ ^1 as @e[type=marker,tag=baba.object,distance=..0.1,nbt={data:{sprite:"text"}}] run data modify entity @s data.parsing set from storage baba:main parsing

execute positioned ^ ^ ^1 unless entity @e[type=marker,tag=baba.object,tag=part.and,distance=..0.1,limit=1] run function baba:board/rules/parse/done
execute positioned ^ ^ ^1 as @e[type=marker,tag=baba.object,tag=part.and,distance=..0.1] run function baba:board/rules/parse/effect_ands
