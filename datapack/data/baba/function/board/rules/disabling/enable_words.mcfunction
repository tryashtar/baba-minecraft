execute store result score text_id baba run data get storage baba:main enabled_ids[0]
scoreboard players remove @e[type=item_display,tag=baba.object,tag=is_text,predicate=baba:match_score/text_id] text_disabled 1
tag @e[type=item_display,tag=baba.object,tag=is_text,predicate=baba:match_score/text_id] add disable_changed

data remove storage baba:main enabled_ids[0]
execute if data storage baba:main enabled_ids[0] run function baba:board/rules/disabling/enable_words
