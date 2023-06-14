# unroll the loop a bit
execute store result score disable baba run data get storage baba:main disabled_ids[0]
scoreboard players operation @e[type=item_display,tag=baba.object,scores={sprite=397973}] text_id -= disable baba
scoreboard players add @e[type=item_display,tag=baba.object,scores={sprite=397973,text_id=0}] text_disabled 1
tag @e[type=item_display,tag=baba.object,scores={sprite=397973,text_id=0}] add disable_changed
scoreboard players operation @e[type=item_display,tag=baba.object,scores={sprite=397973}] text_id += disable baba
data remove storage baba:main disabled_ids[0]

execute if data storage baba:main disabled_ids[0] store result score disable baba run data get storage baba:main disabled_ids[0]
execute if data storage baba:main disabled_ids[0] run scoreboard players operation @e[type=item_display,tag=baba.object,scores={sprite=397973}] text_id -= disable baba
execute if data storage baba:main disabled_ids[0] run scoreboard players add @e[type=item_display,tag=baba.object,scores={sprite=397973,text_id=0}] text_disabled 1
execute if data storage baba:main disabled_ids[0] run tag @e[type=item_display,tag=baba.object,scores={sprite=397973,text_id=0}] add disable_changed
execute if data storage baba:main disabled_ids[0] run scoreboard players operation @e[type=item_display,tag=baba.object,scores={sprite=397973}] text_id += disable baba
execute if data storage baba:main disabled_ids[0] run data remove storage baba:main disabled_ids[0]

execute if data storage baba:main disabled_ids[0] store result score disable baba run data get storage baba:main disabled_ids[0]
execute if data storage baba:main disabled_ids[0] run scoreboard players operation @e[type=item_display,tag=baba.object,scores={sprite=397973}] text_id -= disable baba
execute if data storage baba:main disabled_ids[0] run scoreboard players add @e[type=item_display,tag=baba.object,scores={sprite=397973,text_id=0}] text_disabled 1
execute if data storage baba:main disabled_ids[0] run tag @e[type=item_display,tag=baba.object,scores={sprite=397973,text_id=0}] add disable_changed
execute if data storage baba:main disabled_ids[0] run scoreboard players operation @e[type=item_display,tag=baba.object,scores={sprite=397973}] text_id += disable baba
execute if data storage baba:main disabled_ids[0] run data remove storage baba:main disabled_ids[0]

execute if data storage baba:main disabled_ids[0] run function baba:board/rules/disabling/disable_words
