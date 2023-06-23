data modify storage baba:main current_rules.rules append value {}
data modify storage baba:main current_rules.rules[-1].nbt.data.text_ids set from entity @s data.text_ids
data modify storage baba:main current_rules.rules[-1].nbt.data.conditions set from entity @s data.conditions
data modify storage baba:main current_rules.rules[-1].nbt.CustomName set from entity @s CustomName
data modify storage baba:main current_rules.rules[-1].nbt.Tags set from entity @s Tags
execute store result storage baba:main current_rules.rules[-1].subject int 1 run scoreboard players get @s sprite
execute store result storage baba:main current_rules.rules[-1].effect int 1 run scoreboard players get @s text
execute store result storage baba:main current_rules.rules[-1].verb int 1 run scoreboard players get @s life
execute store result storage baba:main current_rules.rules[-1].disabled int 1 run scoreboard players get @s text_disabled
