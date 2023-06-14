scoreboard players operation @s text_disabled += disable_change baba
execute if score @s text_disabled matches 1 if score disable_change baba matches 1 run data modify storage baba:main disabled_ids append from entity @s data.text_ids[]
execute if score @s text_disabled matches 0 if score disable_change baba matches -1 run data modify storage baba:main enabled_ids append from entity @s data.text_ids[]
