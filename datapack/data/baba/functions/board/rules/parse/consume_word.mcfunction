scoreboard players operation word baba = @s text
data modify storage baba:main word set from entity @s item.tag.text
execute if entity @s[tag=part.not] run function baba:board/rules/parse/part/not
execute if entity @s[tag=part.and] run function baba:board/rules/parse/part/and
execute if entity @s[tag=part.noun] run function baba:board/rules/parse/part/noun
execute if entity @s[tag=part.verb] run function baba:board/rules/parse/part/verb
execute if entity @s[tag=part.property] run function baba:board/rules/parse/part/property
execute if entity @s[tag=part.prefix] run function baba:board/rules/parse/part/prefix
