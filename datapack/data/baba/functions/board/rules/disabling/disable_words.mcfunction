execute store result score disable baba run data get storage baba:main disabled_ids[0]
scoreboard players operation @e[type=item_display,tag=baba.object,tag=is_text] text_id -= disable baba
scoreboard players add @e[type=item_display,tag=baba.object,tag=is_text,scores={text_id=0}] text_disabled 1
tag @e[type=item_display,tag=baba.object,tag=is_text,scores={text_id=0}] add disable_changed
scoreboard players operation @e[type=item_display,tag=baba.object,tag=is_text] text_id += disable baba

data remove storage baba:main disabled_ids[0]
execute if data storage baba:main disabled_ids[0] run function baba:board/rules/disabling/disable_words
