execute store result score rules baba run data get storage baba:main parsing.rules3
scoreboard players operation @e[type=item_display,tag=subject_rules] text_used += rules baba
execute store result score rules baba if data storage baba:main parsing.rules3[][]
scoreboard players operation @e[type=item_display,tag=all_rules] text_used += rules baba
data modify storage baba:main parsing.rules3[][].text_ids append from storage baba:main parsing.all_ids[]
data modify storage baba:main rules append from storage baba:main parsing.rules3[][]
tag @e[type=item_display,tag=final_effect,sort=furthest,limit=1] add first_word