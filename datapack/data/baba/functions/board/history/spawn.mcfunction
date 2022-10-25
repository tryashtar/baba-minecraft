summon marker ~ ~ ~ {Tags:["spawn"]}
execute store result score @e[type=marker,tag=spawn,distance=..0.1,limit=1] sprite run data get storage baba:main previous.objects[0].scores.sprite
execute store result score @e[type=marker,tag=spawn,distance=..0.1,limit=1] text run data get storage baba:main previous.objects[0].scores.text
execute store result score @e[type=marker,tag=spawn,distance=..0.1,limit=1] facing run data get storage baba:main previous.objects[0].scores.facing
execute store result score @e[type=marker,tag=spawn,distance=..0.1,limit=1] walk run data get storage baba:main previous.objects[0].scores.walk
execute store result score @e[type=marker,tag=spawn,distance=..0.1,limit=1] number run data get storage baba:main previous.objects[0].scores.number
execute store result score @e[type=marker,tag=spawn,distance=..0.1,limit=1] color run data get storage baba:main previous.objects[0].scores.color
execute store result score @e[type=marker,tag=spawn,distance=..0.1,limit=1] text_used run data get storage baba:main previous.objects[0].scores.text_used
execute store result score @e[type=marker,tag=spawn,distance=..0.1,limit=1] z_layer run data get storage baba:main previous.objects[0].scores.z_layer
scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] frame 0
data modify entity @e[type=marker,tag=spawn,distance=..0.1,limit=1] data set from storage baba:main previous.objects[0].data
# this removes the spawn tag and applies the baba.object tag
data modify entity @e[type=marker,tag=spawn,distance=..0.1,limit=1] Tags set from storage baba:main previous.objects[0].tags
data remove storage baba:main previous.objects[0]
execute if data storage baba:main previous.objects[0] run function baba:board/history/spawn
