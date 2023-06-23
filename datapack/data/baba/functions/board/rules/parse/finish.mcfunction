execute store result score rules baba run data get storage baba:main parsing.rules3
scoreboard players operation @e[type=item_display,tag=baba.object,tag=subject_rules] text_used += rules baba
execute store result score rules baba if data storage baba:main parsing.rules3[][]
scoreboard players operation @e[type=item_display,tag=baba.object,tag=all_rules] text_used += rules baba
data modify storage baba:main parsing.rules3[][].text_ids append from storage baba:main parsing.all_ids[]
data modify storage baba:main new_rules append from storage baba:main parsing.rules3[][]
tag @e[type=item_display,tag=baba.object,tag=current_not,sort=furthest,limit=1] add first_word
execute unless entity @e[type=item_display,tag=baba.object,tag=current_not,limit=1] run tag @e[type=item_display,tag=baba.object,tag=current_word,sort=furthest,limit=1] add first_word
