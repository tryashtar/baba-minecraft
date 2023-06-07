# letters are trickier, we need to assemble the word ID and string one character at a time
# even more strangely, only words present in the "level palette" can be parsed

# we can shift the current word over to fit the new letter at the same time as fetching it from storage
# conveniently, this also clamps instead of overflowing, preventing a bug where large words like "kbhuzow" would wrap to the same ID as "baba"
tag @s add current_word
execute if data storage baba:main parsing{current:"word"} run data modify storage baba:main parsing merge value {current:"letter",word:0,word_text:[],word_ids:[]}
execute store result score word baba run data get storage baba:main parsing.word 27
execute store result storage baba:main parsing.word int 1 run scoreboard players operation word baba += @s letter
data modify storage baba:main parsing.word_text append from entity @s item.tag.text
execute store result storage baba:main id int 1 run scoreboard players get @s text_id
data modify storage baba:main parsing.word_ids append from storage baba:main id

# these parts of speech only have one possible word, so a simple palette check
execute if score word baba matches 10631 if data storage baba:main words{not:[10631]} run function baba:board/rules/parse/part/not
execute if score word baba matches 1111 if data storage baba:main words{and:[1111]} run function baba:board/rules/parse/part/and

# other parts of speech have many words, so see if the current word ID is present in their palette
data modify storage baba:main check_words set from storage baba:main words
execute store result score nouns baba run data get storage baba:main check_words.noun
execute store result score changed baba run data modify storage baba:main check_words.noun[] set from storage baba:main parsing.word
execute if score nouns baba > changed baba run function baba:board/rules/parse/part/noun

data modify storage baba:main check_words set from storage baba:main words
execute store result score verbs baba run data get storage baba:main check_words.verb
execute store result score changed baba run data modify storage baba:main check_words.verb[] set from storage baba:main parsing.word
execute if score verbs baba > changed baba run function baba:board/rules/parse/part/verb

data modify storage baba:main check_words set from storage baba:main words
execute store result score props baba run data get storage baba:main check_words.property
execute store result score changed baba run data modify storage baba:main check_words.property[] set from storage baba:main parsing.word
execute if score props baba > changed baba run function baba:board/rules/parse/part/property

data modify storage baba:main check_words set from storage baba:main words
execute store result score infix baba run data get storage baba:main check_words.infix
execute store result score changed baba run data modify storage baba:main check_words.infix[] set from storage baba:main parsing.word
execute if score infix baba > changed baba run function baba:board/rules/parse/part/infix

data modify storage baba:main check_words set from storage baba:main words
execute store result score prefix baba run data get storage baba:main check_words.prefix
execute store result score changed baba run data modify storage baba:main check_words.prefix[] set from storage baba:main parsing.word
execute if score prefix baba > changed baba run function baba:board/rules/parse/part/prefix
