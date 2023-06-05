execute store result score word baba run data get storage baba:main parsing.word 27
execute store result storage baba:main parsing.word int 1 run scoreboard players operation word baba += @s letter
data modify storage baba:main check_words set from storage baba:main words
execute store result score nouns baba run data get storage baba:main check_words.noun
execute store result score changed baba run data modify storage baba:main check_words.noun[].id set from storage baba:main parsing.word
execute if score nouns baba > changed baba if data storage baba:main words.noun[0] run function baba:board/rules/parse/assign_subject
