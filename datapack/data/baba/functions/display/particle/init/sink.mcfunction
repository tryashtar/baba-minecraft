item replace entity @s container.0 with splash_potion[custom_model_data=16]
execute store result entity @s item.components."minecraft:potion_contents".custom_color int 1 run scoreboard players get @s color
data modify storage baba:main merge set value {start_interpolation:0,interpolation_duration:10,transformation:{translation:[0f,0f,0f]}}
execute store result storage baba:main merge.transformation.translation[0] float 0.00001220703125000000 run random value -65536..65536
execute store result storage baba:main merge.transformation.translation[2] float 0.00001220703125000000 run random value -65536..65536
data modify entity @s {} merge from storage baba:main merge
scoreboard players set @s life 10
