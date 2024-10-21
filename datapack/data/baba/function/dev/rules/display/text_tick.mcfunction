scoreboard players operation text_id baba = @s text_id
execute unless entity @e[type=item_display,tag=baba.object,tag=is_text,predicate=baba:match_score/text_id] run kill @s
