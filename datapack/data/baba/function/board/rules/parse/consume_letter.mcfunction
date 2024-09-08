# letters are trickier, we need to assemble the word ID and string one character at a time
# even more strangely, only words present in the "level palette" can be parsed
execute positioned ^ ^ ^1 run tag @e[type=item_display,tag=baba.object,tag=active,tag=reparse,tag=part.letter,distance=..0.1] add first_word
execute if data storage baba:main parsing{current:"word"} run tag @e[type=item_display,tag=baba.object,tag=active,tag=current_word] remove current_word
execute if data storage baba:main parsing{current:"word"} run data modify storage baba:main parsing merge value {current:"letter",word:0,word_text:[],word_ids:[]}
tag @s add current_word

# we can shift the current word over to fit the new letter at the same time as fetching it from storage
# conveniently, this also clamps instead of overflowing, preventing a bug where large words like "kbhuzow" would wrap to the same ID as "baba"
execute if score @s text matches ..26 store result score word baba run data get storage baba:main parsing.word 27
execute if score @s text matches 27.. store result score word baba run data get storage baba:main parsing.word 729
execute store result storage baba:main parsing.word int 1 run scoreboard players operation word baba += @s text
data modify storage baba:main parsing.word_text append from entity @s item.components."minecraft:custom_data".baba.text
execute store result storage baba:main id int 1 run scoreboard players get @s text_id
data modify storage baba:main parsing.word_ids append from storage baba:main id

data modify storage baba:main alt_parsing set from storage baba:main parsing

# these parts of speech only have one possible word, so a simple palette check
execute if score word baba matches 10631 if data storage baba:main palette.words{not:[10631]} run function baba:board/rules/parse/part/not
execute if score word baba matches 1111 if data storage baba:main palette.words{and:[1111]} run function baba:board/rules/parse/part/and

# other parts of speech have many words, so see if the current word ID is present in their palette
function baba:board/rules/parse/letter/check_noun with storage baba:main parsing
function baba:board/rules/parse/letter/check_verb with storage baba:main parsing
function baba:board/rules/parse/letter/check_property with storage baba:main parsing
function baba:board/rules/parse/letter/check_infix with storage baba:main parsing
function baba:board/rules/parse/letter/check_prefix with storage baba:main parsing

execute if score parsed baba matches 1 run data modify storage baba:main parsing.current set value "word"
execute if score parsed baba matches 1 run scoreboard players set parsed baba 2
