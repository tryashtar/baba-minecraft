# unroll the loop a bit
execute store result score enable baba run data get storage baba:main enabled_ids[0]
scoreboard players operation @e[type=item_display,tag=baba.object,scores={sprite=397973}] text_id -= enable baba
scoreboard players remove @e[type=item_display,tag=baba.object,scores={sprite=397973,text_id=0}] text_disabled 1
tag @e[type=item_display,tag=baba.object,scores={sprite=397973,text_id=0}] add disable_changed
scoreboard players operation @e[type=item_display,tag=baba.object,scores={sprite=397973}] text_id += enable baba
data remove storage baba:main enabled_ids[0]

execute if data storage baba:main enabled_ids[0] store result score enable baba run data get storage baba:main enabled_ids[0]
execute if data storage baba:main enabled_ids[0] run scoreboard players operation @e[type=item_display,tag=baba.object,scores={sprite=397973}] text_id -= enable baba
execute if data storage baba:main enabled_ids[0] run scoreboard players remove @e[type=item_display,tag=baba.object,scores={sprite=397973,text_id=0}] text_disabled 1
execute if data storage baba:main enabled_ids[0] run tag @e[type=item_display,tag=baba.object,scores={sprite=397973,text_id=0}] add disable_changed
execute if data storage baba:main enabled_ids[0] run scoreboard players operation @e[type=item_display,tag=baba.object,scores={sprite=397973}] text_id += enable baba
execute if data storage baba:main enabled_ids[0] run data remove storage baba:main enabled_ids[0]

execute if data storage baba:main enabled_ids[0] store result score enable baba run data get storage baba:main enabled_ids[0]
execute if data storage baba:main enabled_ids[0] run scoreboard players operation @e[type=item_display,tag=baba.object,scores={sprite=397973}] text_id -= enable baba
execute if data storage baba:main enabled_ids[0] run scoreboard players remove @e[type=item_display,tag=baba.object,scores={sprite=397973,text_id=0}] text_disabled 1
execute if data storage baba:main enabled_ids[0] run tag @e[type=item_display,tag=baba.object,scores={sprite=397973,text_id=0}] add disable_changed
execute if data storage baba:main enabled_ids[0] run scoreboard players operation @e[type=item_display,tag=baba.object,scores={sprite=397973}] text_id += enable baba
execute if data storage baba:main enabled_ids[0] run data remove storage baba:main enabled_ids[0]

execute if data storage baba:main enabled_ids[0] run function baba:board/rules/disabling/enable_words
