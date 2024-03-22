data merge entity @s {teleport_duration:3,width:1f,height:0.1f,item_display:"fixed",Tags:["baba.object","assign","dirty"]}
item replace entity @s contents with potion
execute store result score @s sprite run data get storage baba:main previous.objects[0].scores.sprite
execute store result score @s appearance run data get storage baba:main previous.objects[0].scores.appearance
execute store result score @s text run data get storage baba:main previous.objects[0].scores.text
execute store result score @s text_id run data get storage baba:main previous.objects[0].scores.text_id
execute store result score @s facing run data get storage baba:main previous.objects[0].scores.facing
execute store result score @s walk run data get storage baba:main previous.objects[0].scores.walk
execute store result score @s number run data get storage baba:main previous.objects[0].scores.number
execute store result score @s color run data get storage baba:main previous.objects[0].scores.color
execute store result score @s inactive_color run data get storage baba:main previous.objects[0].scores.inactive_color
execute store result score @s text_used run data get storage baba:main previous.objects[0].scores.text_used
execute store result score @s text_disabled run data get storage baba:main previous.objects[0].scores.text_disabled
execute store result score @s z_layer run data get storage baba:main previous.objects[0].scores.z_layer
execute store result score @s direction run data get storage baba:main previous.objects[0].scores.direction
scoreboard players set @s frame 0
data modify entity @s item.components."minecraft:custom_data" set from storage baba:main previous.objects[0].data
data modify entity @s Tags append from storage baba:main previous.objects[0].tags[]
