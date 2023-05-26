tag @s add init
item replace entity @s container.0 with splash_potion{CustomModelData:1,CustomPotionColor:15590021}
execute summon marker run function baba:display/particle/random_dir
data modify storage baba:main merge set value {start_interpolation:0,interpolation_duration:15,transformation:{translation:[0f,0f,0f]}}
data modify storage baba:main merge.transformation.translation[0] set from storage baba:main direction[0]
data modify storage baba:main merge.transformation.translation[2] set from storage baba:main direction[1]
data modify entity @s {} merge from storage baba:main merge
scoreboard players set @s life 12
