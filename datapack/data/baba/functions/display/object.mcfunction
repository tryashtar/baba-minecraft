execute store result entity @s Pos[1] double 0.0001 run scoreboard players get @s z_layer
execute at @s run tp @s ~ ~1.001 ~
scoreboard players operation sprite baba = @s sprite
execute unless score @s appearance matches 0 run scoreboard players operation @s sprite = @s appearance
execute if entity @s[scores={sprite=40150}] run function baba:display/object/baba
execute if entity @s[scores={sprite=397973}] run function baba:display/object/text
execute if entity @s[scores={sprite=220460}] run function baba:display/object/keke
execute if entity @s[scores={sprite=356}] run function baba:display/object/me
execute if entity @s[scores={sprite=9863066}] run function baba:display/object/robot
execute if entity @s[scores={sprite=43355}] run function baba:display/object/belt
execute if entity @s[scores={sprite=46417}] run function baba:display/object/bird
execute if entity @s[scores={sprite=2032}] run function baba:display/object/bug
execute if entity @s[scores={sprite=72200}] run function baba:display/object/crab
execute if entity @s[scores={sprite=266319164}] run function baba:display/object/rocket
execute if entity @s[scores={sprite=10329537}] run function baba:display/object/skull
execute if entity @s[scores={sprite=3889019}] run function baba:display/object/ghost
execute if entity @s[scores={sprite=283292888}] run function baba:display/object/statue
execute if entity @s[scores={sprite=50645}] run function baba:display/object/bolt
execute if entity @s[scores={sprite=158575}] run function baba:display/object/hand
execute if entity @s[scores={sprite=1505}] run function baba:display/object/bat
execute if entity @s[scores={sprite=39899228}] run function baba:display/object/bubble
execute if entity @s[scores={sprite=2599}] run function baba:display/object/cog
execute if entity @s[scores={sprite=772772}] run data modify entity @s item.tag.CustomModelData set value 292
execute if entity @s[scores={sprite=126880}] run data modify entity @s item.tag.CustomModelData set value 293
execute if entity @s[scores={sprite=8179}] run data modify entity @s item.tag.CustomModelData set value 294
execute if entity @s[scores={sprite=247730}] run data modify entity @s item.tag.CustomModelData set value 295
execute if entity @s[scores={sprite=10419170}] run data modify entity @s item.tag.CustomModelData set value 296
execute if entity @s[scores={sprite=15486}] run data modify entity @s item.tag.CustomModelData set value 297
execute if entity @s[scores={sprite=90090}] run data modify entity @s item.tag.CustomModelData set value 298
execute if entity @s[scores={sprite=234610470}] run data modify entity @s item.tag.CustomModelData set value 299
execute if entity @s[scores={sprite=365321}] run data modify entity @s item.tag.CustomModelData set value 300
execute if entity @s[scores={sprite=400550}] run data modify entity @s item.tag.CustomModelData set value 301
execute if entity @s[scores={sprite=3558512}] run data modify entity @s item.tag.CustomModelData set value 302
execute if entity @s[scores={sprite=267233}] run data modify entity @s item.tag.CustomModelData set value 303
execute if entity @s[scores={sprite=406922}] run data modify entity @s item.tag.CustomModelData set value 304
execute if entity @s[scores={sprite=1887}] run data modify entity @s item.tag.CustomModelData set value 305
execute if entity @s[scores={sprite=125150}] run data modify entity @s item.tag.CustomModelData set value 306
execute if entity @s[scores={sprite=139055}] run data modify entity @s item.tag.CustomModelData set value 307
execute if entity @s[scores={sprite=5421922}] run data modify entity @s item.tag.CustomModelData set value 308
execute if entity @s[scores={sprite=358078}] run data modify entity @s item.tag.CustomModelData set value 309
execute if entity @s[scores={sprite=380741}] run data modify entity @s item.tag.CustomModelData set value 310
execute if entity @s[scores={sprite=14432}] run data modify entity @s item.tag.CustomModelData set value 311
execute if entity @s[scores={sprite=3612393}] run data modify entity @s item.tag.CustomModelData set value 312
execute if entity @s[scores={sprite=173297}] run data modify entity @s item.tag.CustomModelData set value 313
execute if entity @s[scores={sprite=239874}] run data modify entity @s item.tag.CustomModelData set value 314
execute if entity @s[scores={sprite=11423}] run data modify entity @s item.tag.CustomModelData set value 315
execute if entity @s[scores={sprite=10986913}] run data modify entity @s item.tag.CustomModelData set value 316
execute if entity @s[scores={sprite=60080}] run data modify entity @s item.tag.CustomModelData set value 317
execute if entity @s[scores={sprite=3341}] run data modify entity @s item.tag.CustomModelData set value 318
execute if entity @s[scores={sprite=-1}] run data modify entity @s item.tag.CustomModelData set value 319
execute if entity @s[scores={sprite=365747}] run data modify entity @s item.tag.CustomModelData set value 320
execute if entity @s[scores={sprite=94574}] run data modify entity @s item.tag.CustomModelData set value 321
execute if entity @s[scores={sprite=97534954}] run data modify entity @s item.tag.CustomModelData set value 322
execute if entity @s[scores={sprite=4679038}] run data modify entity @s item.tag.CustomModelData set value 323
execute if entity @s[scores={sprite=10506715}] run data modify entity @s item.tag.CustomModelData set value 324
execute if entity @s[scores={sprite=955387723}] run data modify entity @s item.tag.CustomModelData set value 325
execute if entity @s[scores={sprite=388602}] run data modify entity @s item.tag.CustomModelData set value 326
execute if entity @s[scores={sprite=92782899}] run data modify entity @s item.tag.CustomModelData set value 327
execute if entity @s[scores={sprite=6491892}] run function baba:display/object/level
execute if entity @s[scores={sprite=1842025}] run function baba:display/object/cloud
execute if entity @s[scores={sprite=3297353}] run function baba:display/object/fence
execute if entity @s[scores={sprite=4075642}] run function baba:display/object/grass
execute if entity @s[scores={sprite=4353053}] run function baba:display/object/hedge
execute if entity @s[scores={sprite=6647}] run function baba:display/object/ice
execute if entity @s[scores={sprite=243140}] run function baba:display/object/line
execute if entity @s[scores={sprite=321926}] run function baba:display/object/pipe
execute if entity @s[scores={sprite=269481740}] run function baba:display/object/rubble
execute if entity @s[scores={sprite=453774}] run function baba:display/object/wall
execute if entity @s[scores={sprite=12257559}] run function baba:display/object/water
execute if entity @s[scores={sprite=237520}] run function baba:display/object/lava
execute if entity @s[scores={sprite=1870}] run function baba:display/object/bog
execute if entity @s[scores={sprite=1423829}] run function baba:display/object/brick
execute if entity @s[scores={sprite=1837248}] run function baba:display/object/cliff
execute if entity @s[scores={sprite=54575550}] run data modify entity @s item.tag.CustomModelData set value 522
execute if entity @s[scores={sprite=-2}] run data modify entity @s item.tag.CustomModelData set value 579
execute if entity @s[scores={sprite=397973,text=320763071}] run data modify entity @s item.tag.CustomModelData set value 580
execute at @s[tag=is_text,tag=!prop.hide] run function baba:display/object/text_overlay
execute at @s[scores={sprite=6491892},tag=!prop.hide] run function baba:display/object/level_icon
scoreboard players operation @s sprite = sprite baba
execute if entity @s[tag=prop.hide] run data modify entity @s item.tag.CustomModelData set value 0
scoreboard players operation color baba = @s color
execute if entity @s[scores={sprite=397973,text_used=0}] run scoreboard players operation color baba = @s inactive_color
execute if entity @s[tag=prop.red] run scoreboard players set color baba 15029051
execute if entity @s[tag=prop.blue] run scoreboard players set color baba 5602016
execute if score palette baba matches 1.. run function baba:display/palette
execute store result entity @s item.tag.CustomPotionColor int 1 run scoreboard players get color baba
