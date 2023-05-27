execute summon marker run function baba:display/particle/random
execute store result score random baba run data get storage baba:main random[0] 0.0000000018626451501
data modify storage baba:main merge set value {axis:[0f,1f,0f]}
execute store result storage baba:main merge.angle float 1.57079632679489661923 run scoreboard players get random baba
summon item_display ~ ~0.1 ~ {width:2f,height:0.1f,item_display:"fixed",Tags:["particle","melt_particle","new"]}
data modify entity @e[type=item_display,tag=new,distance=..0.2,limit=1] transformation.left_rotation set from storage baba:main merge
tag @e[type=item_display,tag=new,distance=..0.2,limit=1] remove new
