# effect noun or property
# valid follows: and
data modify storage baba:main parsing set from entity @s item.tag.parsing
execute store result score rule_count baba if data storage baba:main parsing.rules[0][]
scoreboard players operation @s text_using += rule_count baba
scoreboard players operation @e[type=item_display,tag=baba.object,tag=ambiguous] text_using += rule_count baba
tag @e[type=item_display,tag=baba.object,tag=ambiguous] remove ambiguous
tag @e[type=item_display,tag=baba.object,tag=pending_all_rules] add all_rules
scoreboard players add @e[type=item_display,tag=baba.object,tag=subject] text_using 1
scoreboard players operation @e[type=item_display,tag=baba.object,tag=last_verb] text_using += rule_count baba

data modify storage baba:main parsing.rules[][].text append from storage baba:main parsing.pending[]
data modify storage baba:main parsing.pending set value []
data modify storage baba:main parsing.rules append from storage baba:main parsing.rules[-1]
execute store result storage baba:main text_id int 1 run scoreboard players get @s text_id
data modify storage baba:main parsing.rules[-1][].text append from storage baba:main text_id
data modify storage baba:main parsing.rules[-1][].text append from storage baba:main parsing.ambiguous[]
data modify storage baba:main parsing.ambiguous set value []
execute store result storage baba:main parsing.rules[-1][].effect.text int 1 run scoreboard players get @s text
data modify storage baba:main parsing.rules[-1][].effect.text_text set from entity @s item.tag.text
data modify storage baba:main parsing.rules[-1][].effect.inverted set from storage baba:main parsing.inverted
execute if entity @s[tag=part.noun] run data modify storage baba:main parsing.rules[-1][].effect.part set value "noun"
execute if entity @s[tag=part.property] run data modify storage baba:main parsing.rules[-1][].effect.part set value "property"
data modify storage baba:main parsing.inverted set value 0b

execute positioned ^ ^ ^1 as @e[type=item_display,tag=baba.object,tag=reparse,distance=..0.1] run data modify entity @s item.tag.parsing set from storage baba:main parsing

execute positioned ^ ^ ^1 unless entity @e[type=item_display,tag=baba.object,tag=part.and,distance=..0.1,limit=1] run function baba:board/rules/parse/done
execute positioned ^ ^ ^1 as @e[type=item_display,tag=baba.object,tag=part.and,distance=..0.1] run function baba:board/rules/parse/effect_ands
execute unless entity @s[tag=part.noun] positioned ^ ^ ^1 as @e[type=item_display,tag=baba.object,tag=reparse,tag=!part.and,distance=..0.1] run function baba:board/rules/parse/new
