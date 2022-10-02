execute store result score disable baba run data get storage baba:main normal_rules[0].used_text[0]
execute as @e[type=marker,tag=baba.object] if score @s text_id = disable baba run scoreboard players remove @s text_used 1
data remove storage baba:main normal_rules[0].used_text[0]
execute if data storage baba:main normal_rules[0].used_text[0] run function baba:board/rules/disable
