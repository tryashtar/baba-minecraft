# start of sentence
# valid parts: not, prefix, noun
data modify storage baba:main parsing set value {inverted:0b,rules:[{text:[],conditions:[]}]}
data modify entity @s data.parsing set from storage baba:main parsing
execute if entity @s[tag=part.not] run function baba:board/rules/parse/prefixed
execute if entity @s[tag=part.prefix] run function baba:board/rules/parse/prefix
execute if entity @s[tag=part.noun] run function baba:board/rules/parse/subject
