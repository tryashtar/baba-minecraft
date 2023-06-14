# unroll the loop a bit
execute store result score enable baba run data get storage baba:main enabled_ids[0]
execute as @e[type=item_display,tag=baba.object,scores={text_id=1..}] if score @s text_id = enable baba run scoreboard players remove @s text_disabled 1
data remove storage baba:main enabled_ids[0]
execute if data storage baba:main enabled_ids[0] store result score enable baba run data get storage baba:main enabled_ids[0]
execute if data storage baba:main enabled_ids[0] as @e[type=item_display,tag=baba.object,scores={text_id=1..}] if score @s text_id = enable baba run scoreboard players remove @s text_disabled 1
data remove storage baba:main enabled_ids[0]
execute if data storage baba:main enabled_ids[0] store result score enable baba run data get storage baba:main enabled_ids[0]
execute if data storage baba:main enabled_ids[0] as @e[type=item_display,tag=baba.object,scores={text_id=1..}] if score @s text_id = enable baba run scoreboard players remove @s text_disabled 1
data remove storage baba:main enabled_ids[0]
execute if data storage baba:main enabled_ids[0] run function baba:board/rules/disabling/enable_words
