data modify storage baba:main check_level set from storage baba:main last_level
execute store success score different baba run data modify storage baba:main check_level set from entity @s item.tag.level_data.link
execute if score different baba matches 0 run tp @e[type=item_display,tag=baba.object,tag=prop.select] ~ ~ ~
