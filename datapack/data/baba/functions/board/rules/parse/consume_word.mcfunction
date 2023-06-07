# full words are easy; we already know the part of speech, full word ID and string text
tag @e[type=item_display,tag=current_word] remove current_word
tag @s add current_word
scoreboard players operation word baba = @s text
data modify storage baba:main parsing.word_text set value []
data modify storage baba:main parsing.word_text append from entity @s item.tag.text
data modify storage baba:main parsing.word_ids set value [0]
data modify storage baba:main parsing.current set value "word"
execute store result storage baba:main parsing.word_ids[0] int 1 run scoreboard players get @s text_id

# each of these check the parsing context "state" to see if this part of speech is expected
# if so, it will be parsed and modify the state accordingly
# if not, parsing will terminate
execute if entity @s[tag=part.not] run function baba:board/rules/parse/part/not
execute if entity @s[tag=part.and] run function baba:board/rules/parse/part/and
execute if entity @s[tag=part.noun] run function baba:board/rules/parse/part/noun
execute if entity @s[tag=part.verb] run function baba:board/rules/parse/part/verb
execute if entity @s[tag=part.property] run function baba:board/rules/parse/part/property
execute if entity @s[tag=part.infix] run function baba:board/rules/parse/part/infix
execute if entity @s[tag=part.prefix] run function baba:board/rules/parse/part/prefix
