execute store result score enable baba run data get storage baba:main normal_rules[0].text[0]
execute as @e[type=armor_stand,tag=baba.object,scores={text_id=1..}] if score @s text_id = enable baba run scoreboard players set @s text_disabled2 -1
data remove storage baba:main normal_rules[0].text[0]
execute if data storage baba:main normal_rules[0].text[0] run function baba:board/rules/graphics/enable
