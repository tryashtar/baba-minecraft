execute store result score word baba run data get storage baba:main parsing.word 27
execute store result storage baba:main parsing.word int 1 run scoreboard players operation word baba += @s letter
# to do: form text from multiple letters
data modify storage baba:main word set from entity @s item.tag.text
execute store result storage baba:main id int 1 run scoreboard players get @s text_id
data modify storage baba:main parsing.ids append from storage baba:main id

execute if score word baba matches 10631 if data storage baba:main words{not:[10631]} run function baba:board/rules/parse/part/not
execute if score word baba matches 1111 if data storage baba:main words{and:[1111]} run function baba:board/rules/parse/part/and

data modify storage baba:main check_words set from storage baba:main words
execute store result score nouns baba run data get storage baba:main check_words.noun
execute store result score changed baba run data modify storage baba:main check_words.noun[].id set from storage baba:main parsing.word
execute if score nouns baba > changed baba if data storage baba:main words.noun[0] run function baba:board/rules/parse/part/noun

data modify storage baba:main check_words set from storage baba:main words
execute store result score verbs baba run data get storage baba:main check_words.verb
execute store result score changed baba run data modify storage baba:main check_words.verb[].id set from storage baba:main parsing.word
execute if score verbs baba > changed baba if data storage baba:main words.verb[0] run function baba:board/rules/parse/part/verb

data modify storage baba:main check_words set from storage baba:main words
execute store result score props baba run data get storage baba:main check_words.property
execute store result score changed baba run data modify storage baba:main check_words.property[].id set from storage baba:main parsing.word
execute if score props baba > changed baba if data storage baba:main words.property[0] run function baba:board/rules/parse/part/property

data modify storage baba:main check_words set from storage baba:main words
execute store result score infix baba run data get storage baba:main check_words.infix
execute store result score changed baba run data modify storage baba:main check_words.infix[].id set from storage baba:main parsing.word
execute if score props baba > changed baba if data storage baba:main words.infix[0] run function baba:board/rules/parse/part/infix

data modify storage baba:main check_words set from storage baba:main words
execute store result score prefix baba run data get storage baba:main check_words.prefix
execute store result score changed baba run data modify storage baba:main check_words.prefix[].id set from storage baba:main parsing.word
execute if score props baba > changed baba if data storage baba:main words.prefix[0] run function baba:board/rules/parse/part/prefix
