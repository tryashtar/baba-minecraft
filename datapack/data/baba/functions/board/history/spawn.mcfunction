summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:potion",Count:1b}],HandItems:[{id:"minecraft:tnt",Count:1b}],Tags:["baba.object","assign","spawn"]}
execute store result score @e[type=armor_stand,tag=spawn,distance=..0.1,limit=1] sprite run data get storage baba:main previous.objects[0].scores.sprite
execute store result score @e[type=armor_stand,tag=spawn,distance=..0.1,limit=1] text run data get storage baba:main previous.objects[0].scores.text
execute store result score @e[type=armor_stand,tag=spawn,distance=..0.1,limit=1] text_id run data get storage baba:main previous.objects[0].scores.text_id
execute store result score @e[type=armor_stand,tag=spawn,distance=..0.1,limit=1] facing run data get storage baba:main previous.objects[0].scores.facing
execute store result score @e[type=armor_stand,tag=spawn,distance=..0.1,limit=1] walk run data get storage baba:main previous.objects[0].scores.walk
execute store result score @e[type=armor_stand,tag=spawn,distance=..0.1,limit=1] number run data get storage baba:main previous.objects[0].scores.number
execute store result score @e[type=armor_stand,tag=spawn,distance=..0.1,limit=1] color run data get storage baba:main previous.objects[0].scores.color
execute store result score @e[type=armor_stand,tag=spawn,distance=..0.1,limit=1] text_used run data get storage baba:main previous.objects[0].scores.text_used
execute store result score @e[type=armor_stand,tag=spawn,distance=..0.1,limit=1] z_layer run data get storage baba:main previous.objects[0].scores.z_layer
execute store result score @e[type=armor_stand,tag=spawn,distance=..0.1,limit=1] direction run data get storage baba:main previous.objects[0].scores.direction
scoreboard players set @e[type=armor_stand,tag=spawn,distance=..0.1,limit=1] frame 0
data modify entity @e[type=armor_stand,tag=spawn,distance=..0.1,limit=1] HandItems[0].tag set from storage baba:main previous.objects[0].data
data modify entity @e[type=armor_stand,tag=spawn,distance=..0.1,limit=1] Tags append from storage baba:main previous.objects[0].tags[]
tag @e[type=armor_stand,tag=spawn,distance=..0.1,limit=1] remove spawn
data remove storage baba:main previous.objects[0]
execute if data storage baba:main previous.objects[0] run function baba:board/history/spawn
