data modify storage baba:main check_level set from storage baba:main last_level
execute store success score different baba run data modify storage baba:main check_level set from entity @s item.components."minecraft:custom_data".level_data.link
execute if score different baba matches 0 run tp @e[type=#baba:object,tag=baba.object,tag=prop.select] ~ ~ ~
