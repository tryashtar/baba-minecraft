execute store result score text_batch baba run data get storage baba:main batches[0]
execute as @e[type=marker,tag=baba.object,tag=text_used] if score @s text_batch = text_batch baba run scoreboard players add @s text_used 1
scoreboard players add @e[type=marker,tag=baba.object,tag=text_used,scores={text_batch=-1}] text_used 1

data remove storage baba:main batches[0]
execute if data storage baba:main batches[0] run function baba:board/rules/parse/after_verb/finalize/update_batches
