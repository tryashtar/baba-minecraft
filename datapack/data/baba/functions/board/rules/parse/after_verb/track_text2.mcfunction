tag @s add text_used
scoreboard players add text_id baba 1
scoreboard players operation @s[scores={text_id=0}] text_id = text_id baba
scoreboard players set @s text_batch -3
