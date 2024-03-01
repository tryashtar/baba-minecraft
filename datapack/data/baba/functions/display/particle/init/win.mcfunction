item replace entity @s container.0 with splash_potion[custom_model_data=1]
scoreboard players set color baba 15590021
execute store result storage baba:main context.color int 1 run scoreboard players get color baba
function baba:display/palette with storage baba:main context
execute store result entity @s item.components."minecraft:potion_contents".custom_color int 1 run scoreboard players get color baba
data modify storage baba:main merge set value {start_interpolation:0,interpolation_duration:12,transformation:{translation:[0f,0f,0f]}}
execute store result storage baba:main merge.transformation.translation[0] float 0.00001525878906250000 run random value -65536..65536
execute store result storage baba:main merge.transformation.translation[2] float 0.00001525878906250000 run random value -65536..65536
data modify entity @s {} merge from storage baba:main merge
scoreboard players set @s life 12
