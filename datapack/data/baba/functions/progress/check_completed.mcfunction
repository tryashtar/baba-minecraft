data modify storage baba:main check_complete set from storage baba:main completed_levels
execute store result score count baba run data get storage baba:main completed_levels
data modify storage baba:main link set from entity @s item.components."minecraft:custom_data".baba.level_data.link
execute if data storage baba:main {link:"up"} run data modify storage baba:main link set from storage baba:main level_stack[-2]
execute store result score changed baba run data modify storage baba:main check_complete[] set from storage baba:main link
execute if score changed baba < count baba run tag @s add complete
