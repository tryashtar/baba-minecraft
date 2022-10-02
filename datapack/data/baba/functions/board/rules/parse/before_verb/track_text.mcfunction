tag @s add text_used
scoreboard players add text_id baba 1
scoreboard players operation @s[scores={text_id=0}] text_id = text_id baba
scoreboard players operation @s text_batch = text_batch baba
execute if score text_batch baba matches 1.. store result storage baba:main text_id int 1 run scoreboard players get @s text_id
execute if score text_batch baba matches 1.. run data modify storage baba:main parsing[-1].text append from storage baba:main text_id
