scoreboard players operation word baba = @s text
execute if entity @s[tag=part.not] store success storage baba:main parsing.inverted byte 1 unless data storage baba:main parsing{inverted:1b}
execute if entity @s[tag=part.noun] unless data storage baba:main parsing.subject run function baba:board/rules/parse/assign_subject
execute if entity @s[tag=part.verb] unless data storage baba:main parsing.verb run function baba:board/rules/parse/assign_verb
execute if entity @s[tag=part.property] unless data storage baba:main parsing.effect run function baba:board/rules/parse/assign_effect
