data modify storage baba:main check_complete set from storage baba:main completed_levels
execute store result score count baba run data get storage baba:main completed_levels
execute store result score changed baba run data modify storage baba:main check_complete[] set from entity @s item.tag.level_data.link
execute if score changed baba < count baba run tag @s add complete
