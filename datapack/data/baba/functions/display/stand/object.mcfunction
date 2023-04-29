execute store result entity @s Pos[1] double 0.00001 run scoreboard players get @s z_layer
execute at @s run tp @s ~ ~1.001 ~
execute if entity @s[scores={sprite=23193}] run function baba:display/stand/object/baba
execute if entity @s[scores={sprite=30442}] run function baba:display/stand/object/text
execute if entity @s[scores={sprite=45087}] run function baba:display/stand/object/keke
execute if entity @s[scores={sprite=61656}] run function baba:display/stand/object/me
execute if entity @s[scores={sprite=8465}] run function baba:display/stand/object/robot
execute if entity @s[scores={sprite=35402}] run function baba:display/stand/object/belt
execute if entity @s[scores={sprite=33425}] run function baba:display/stand/object/bird
execute if entity @s[scores={sprite=65488}] run function baba:display/stand/object/bug
execute if entity @s[scores={sprite=23664}] run function baba:display/stand/object/crab
execute if entity @s[scores={sprite=20987}] run function baba:display/stand/object/rocket
execute if entity @s[scores={sprite=61583}] run function baba:display/stand/object/skull
execute if entity @s[scores={sprite=44713}] run function baba:display/stand/object/ghost
execute if entity @s[scores={sprite=25730}] run function baba:display/stand/object/statue
execute if entity @s[scores={sprite=45408}] run function baba:display/stand/object/bolt
execute if entity @s[scores={sprite=11302}] run function baba:display/stand/object/hand
execute if entity @s[scores={sprite=54043}] run function baba:display/stand/object/bat
execute if entity @s[scores={sprite=17246}] run function baba:display/stand/object/bubble
execute if entity @s[scores={sprite=22412}] run function baba:display/stand/object/cog
data modify entity @s[scores={sprite=7620}] item.tag.CustomModelData set value 265
data modify entity @s[scores={sprite=14151}] item.tag.CustomModelData set value 266
data modify entity @s[scores={sprite=30686}] item.tag.CustomModelData set value 267
data modify entity @s[scores={sprite=1043}] item.tag.CustomModelData set value 268
data modify entity @s[scores={sprite=49848}] item.tag.CustomModelData set value 269
data modify entity @s[scores={sprite=54021}] item.tag.CustomModelData set value 270
data modify entity @s[scores={sprite=61188}] item.tag.CustomModelData set value 271
data modify entity @s[scores={sprite=34898}] item.tag.CustomModelData set value 271
data modify entity @s[scores={sprite=22457}] item.tag.CustomModelData set value 272
data modify entity @s[scores={sprite=13704}] item.tag.CustomModelData set value 273
data modify entity @s[scores={sprite=29188}] item.tag.CustomModelData set value 274
data modify entity @s[scores={sprite=3475}] item.tag.CustomModelData set value 275
data modify entity @s[scores={sprite=50707}] item.tag.CustomModelData set value 276
data modify entity @s[scores={sprite=21096}] item.tag.CustomModelData set value 277
data modify entity @s[scores={sprite=2451}] item.tag.CustomModelData set value 278
data modify entity @s[scores={sprite=12661}] item.tag.CustomModelData set value 279
data modify entity @s[scores={sprite=56535}] item.tag.CustomModelData set value 280
data modify entity @s[scores={sprite=58060}] item.tag.CustomModelData set value 281
data modify entity @s[scores={sprite=49201}] item.tag.CustomModelData set value 282
data modify entity @s[scores={sprite=55367}] item.tag.CustomModelData set value 283
data modify entity @s[scores={sprite=64585}] item.tag.CustomModelData set value 284
data modify entity @s[scores={sprite=33356}] item.tag.CustomModelData set value 285
data modify entity @s[scores={sprite=1108}] item.tag.CustomModelData set value 286
data modify entity @s[scores={sprite=18040}] item.tag.CustomModelData set value 287
data modify entity @s[scores={sprite=23508}] item.tag.CustomModelData set value 288
data modify entity @s[scores={sprite=39810}] item.tag.CustomModelData set value 289
data modify entity @s[scores={sprite=32385}] item.tag.CustomModelData set value 290
data modify entity @s[scores={sprite=20568}] item.tag.CustomModelData set value 291
data modify entity @s[scores={sprite=58614}] item.tag.CustomModelData set value 292
data modify entity @s[scores={sprite=28145}] item.tag.CustomModelData set value 293
data modify entity @s[scores={sprite=31241}] item.tag.CustomModelData set value 294
data modify entity @s[scores={sprite=42872}] item.tag.CustomModelData set value 295
data modify entity @s[scores={sprite=59074}] item.tag.CustomModelData set value 296
data modify entity @s[scores={sprite=40563}] item.tag.CustomModelData set value 297
data modify entity @s[scores={sprite=58937}] item.tag.CustomModelData set value 298
data modify entity @s[scores={sprite=60402}] item.tag.CustomModelData set value 299
data modify entity @s[scores={sprite=42294}] item.tag.CustomModelData set value 300
data modify entity @s[scores={sprite=26837}] item.tag.CustomModelData set value 301
execute if entity @s[scores={sprite=48700}] run function baba:display/stand/object/cloud
execute if entity @s[scores={sprite=26472}] run function baba:display/stand/object/fence
execute if entity @s[scores={sprite=30894}] run function baba:display/stand/object/grass
execute if entity @s[scores={sprite=52941}] run function baba:display/stand/object/hedge
execute if entity @s[scores={sprite=26372}] run function baba:display/stand/object/ice
execute if entity @s[scores={sprite=60823}] run function baba:display/stand/object/line
execute if entity @s[scores={sprite=40985}] run function baba:display/stand/object/pipe
execute if entity @s[scores={sprite=27096}] run function baba:display/stand/object/rubble
execute if entity @s[scores={sprite=49468}] run function baba:display/stand/object/wall
execute if entity @s[scores={sprite=42043}] run function baba:display/stand/object/water
execute if entity @s[scores={sprite=28861}] run function baba:display/stand/object/lava
execute if entity @s[scores={sprite=58667}] run function baba:display/stand/object/bog
execute if entity @s[scores={sprite=41172}] run function baba:display/stand/object/brick
execute if entity @s[scores={sprite=32467}] run function baba:display/stand/object/cliff
data modify entity @s[scores={sprite=2526}] item.tag.CustomModelData set value 494
execute at @s[scores={sprite=26837},nbt=!{item:{tag:{properties:["hide"]}}}] run function baba:display/stand/object/level_icon
data modify entity @s[nbt={item:{tag:{properties:["hide"]}}}] item.tag.CustomModelData set value 0
scoreboard players operation color baba = @s color
execute if entity @s[scores={sprite=30442,text_used=0}] run function baba:display/inactive_text
execute if entity @s[nbt={item:{tag:{properties:["red"]}}}] run scoreboard players set color baba 15029051
execute if entity @s[nbt={item:{tag:{properties:["blue"]}}}] run scoreboard players set color baba 5602016
execute if score palette baba matches 1 run function baba:display/stand/palette/underwater
execute if score palette baba matches 2 run function baba:display/stand/palette/factory
execute if score palette baba matches 3 run function baba:display/stand/palette/ruins
execute if score palette baba matches 4 run function baba:display/stand/palette/autumn
execute store result entity @s item.tag.CustomPotionColor int 1 run scoreboard players get color baba
