item replace entity @s container.0 with splash_potion{CustomModelData:19}
scoreboard players set color baba 8636645
execute if score palette baba matches 1.. run function baba:display/palette
execute store result entity @s item.tag.CustomPotionColor int 1 run scoreboard players get color baba
execute summon marker run function baba:display/particle/random
data modify storage baba:main merge set value {start_interpolation:0,interpolation_duration:12,transformation:{translation:[0f,0f,0f]}}
execute store result storage baba:main merge.transformation.translation[0] float 0.00000000069849193129 run data get storage baba:main random[0]
execute store result storage baba:main merge.transformation.translation[2] float 0.00000000069849193129 run data get storage baba:main random[1]
data modify entity @s {} merge from storage baba:main merge
scoreboard players set @s life 12