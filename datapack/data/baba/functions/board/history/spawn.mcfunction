summon item_display ~ ~ ~ {width:1f,height:0.1f,item_display:"fixed",item:{id:"minecraft:potion",Count:1b},Tags:["baba.object","assign","spawn"]}
execute store result score @e[type=item_display,tag=spawn,distance=..0.1,limit=1] sprite run data get storage baba:main previous.objects[0].scores.sprite
execute store result score @e[type=item_display,tag=spawn,distance=..0.1,limit=1] appearance run data get storage baba:main previous.objects[0].scores.appearance
execute store result score @e[type=item_display,tag=spawn,distance=..0.1,limit=1] text run data get storage baba:main previous.objects[0].scores.text
execute store result score @e[type=item_display,tag=spawn,distance=..0.1,limit=1] letter run data get storage baba:main previous.objects[0].scores.letter
execute store result score @e[type=item_display,tag=spawn,distance=..0.1,limit=1] text_id run data get storage baba:main previous.objects[0].scores.text_id
execute store result score @e[type=item_display,tag=spawn,distance=..0.1,limit=1] facing run data get storage baba:main previous.objects[0].scores.facing
execute store result score @e[type=item_display,tag=spawn,distance=..0.1,limit=1] walk run data get storage baba:main previous.objects[0].scores.walk
execute store result score @e[type=item_display,tag=spawn,distance=..0.1,limit=1] number run data get storage baba:main previous.objects[0].scores.number
execute store result score @e[type=item_display,tag=spawn,distance=..0.1,limit=1] color run data get storage baba:main previous.objects[0].scores.color
execute store result score @e[type=item_display,tag=spawn,distance=..0.1,limit=1] inactive_color run data get storage baba:main previous.objects[0].scores.inactive_color
execute store result score @e[type=item_display,tag=spawn,distance=..0.1,limit=1] text_used run data get storage baba:main previous.objects[0].scores.text_used
execute store result score @e[type=item_display,tag=spawn,distance=..0.1,limit=1] z_layer run data get storage baba:main previous.objects[0].scores.z_layer
execute store result score @e[type=item_display,tag=spawn,distance=..0.1,limit=1] direction run data get storage baba:main previous.objects[0].scores.direction
scoreboard players set @e[type=item_display,tag=spawn,distance=..0.1,limit=1] frame 0
data modify entity @e[type=item_display,tag=spawn,distance=..0.1,limit=1] item.tag set from storage baba:main previous.objects[0].data
data modify entity @e[type=item_display,tag=spawn,distance=..0.1,limit=1] Tags append from storage baba:main previous.objects[0].tags[]
tag @e[type=item_display,tag=spawn,distance=..0.1,limit=1] remove spawn
data remove storage baba:main previous.objects[0]
execute if data storage baba:main previous.objects[0] run function baba:board/history/spawn
