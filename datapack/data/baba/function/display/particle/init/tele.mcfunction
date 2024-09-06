item replace entity @s contents with splash_potion[item_model="baba:particles/tele/1"]
scoreboard players set color baba 8636645
execute store result storage baba:main context.color int 1 run scoreboard players get color baba
function baba:display/palette with storage baba:main context
execute store result entity @s item.components."minecraft:potion_contents".custom_color int 1 run scoreboard players get color baba
data modify storage baba:main merge set value {start_interpolation:0,interpolation_duration:12,transformation:{translation:[0f,0f,0f]}}
execute store result storage baba:main merge.transformation.translation[0] float 0.00002288818359375000 run random value -65536..65536
execute store result storage baba:main merge.transformation.translation[2] float 0.00002288818359375000 run random value -65536..65536
data modify entity @s {} merge from storage baba:main merge
scoreboard players set @s life 12
