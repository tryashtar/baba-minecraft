item replace entity @s container.0 with splash_potion{CustomModelData:16}
execute store result entity @s item.tag.CustomPotionColor int 1 run scoreboard players get @s color
execute summon marker run function baba:display/particle/random
data modify storage baba:main merge set value {start_interpolation:0,interpolation_duration:10,transformation:{translation:[0f,0f,0f]}}
execute store result storage baba:main merge.transformation.translation[0] float 0.00000000037252903002 run data get storage baba:main random[0]
execute store result storage baba:main merge.transformation.translation[2] float 0.00000000037252903002 run data get storage baba:main random[1]
data modify entity @s {} merge from storage baba:main merge
scoreboard players set @s life 10
