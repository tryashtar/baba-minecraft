scoreboard players operation word baba = @s text
execute if entity @s[tag=part.not] run function baba:board/rules/parse/not
execute if entity @s[tag=part.and] run function baba:board/rules/parse/and
execute if entity @s[tag=part.noun] run function baba:board/rules/parse/noun
execute if entity @s[tag=part.verb] run function baba:board/rules/parse/verb
execute if entity @s[tag=part.property] run function baba:board/rules/parse/property
