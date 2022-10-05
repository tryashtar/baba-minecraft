execute store result score disable baba run data get storage baba:main normal_rules[0].text[0]
execute as @e[type=marker,tag=baba.object,scores={text_id=1..}] if score @s text_id = disable baba run scoreboard players add @s text_disabled 1
data remove storage baba:main normal_rules[0].text[0]
execute if data storage baba:main normal_rules[0].text[0] run function baba:board/rules/graphics/disable
