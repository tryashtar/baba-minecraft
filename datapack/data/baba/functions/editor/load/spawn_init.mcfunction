data merge entity @s {width:1f,height:0.1f,item_display:"fixed",item:{id:"minecraft:potion",Count:1b},Tags:["baba.object"]}
execute store result score @s sprite run data get storage baba:main level.tiles[0][0][0].scores.sprite
execute store result score @s text run data get storage baba:main level.tiles[0][0][0].scores.text
execute store result score @s facing run data get storage baba:main level.tiles[0][0][0].scores.facing
execute store result score @s walk run data get storage baba:main level.tiles[0][0][0].scores.walk
execute store result score @s number run data get storage baba:main level.tiles[0][0][0].scores.number
execute store result score @s color run data get storage baba:main level.tiles[0][0][0].scores.color
execute store result score @s inactive_color run data get storage baba:main level.tiles[0][0][0].scores.inactive_color
execute store result score @s appearance run data get storage baba:main level.tiles[0][0][0].scores.appearance
execute store result score @s z_layer run data get storage baba:main level.tiles[0][0][0].scores.z_layer
execute store result score @s direction run data get storage baba:main level.tiles[0][0][0].scores.direction
scoreboard players set @s[scores={facing=0}] facing 4
scoreboard players set @s frame 0
data modify entity @s item.tag set from storage baba:main level.tiles[0][0][0].data
data modify entity @s Tags append from storage baba:main level.tiles[0][0][0].tags[]
