execute store result storage baba:main id int 1 run scoreboard players get @s text_id
data modify storage baba:main parsing.text append from storage baba:main id

execute if score @s letter matches 1.. run function baba:board/rules/parse/consume_letter
execute unless score @s letter matches 1.. run function baba:board/rules/parse/consume_word
