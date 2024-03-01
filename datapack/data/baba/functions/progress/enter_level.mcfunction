data modify storage baba:main level_link set from entity @s item.components."minecraft:custom_data".level_data.link
execute if data storage baba:main {level_link:"up"} run function baba:progress/exit_level
execute unless data storage baba:main {level_link:"up"} run data modify storage baba:main level_stack append from entity @s item.components."minecraft:custom_data".level_data.link
execute unless data storage baba:main {level_link:"up"} run function baba:progress/load_top
