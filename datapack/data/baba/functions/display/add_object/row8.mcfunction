scoreboard players operation color baba = @s color
execute if entity @s[tag=is_text,scores={text_used=0}] run function baba:display/disabled_text
execute if score palette baba matches 0 run function baba:display/palette/default
execute if score palette baba matches 1 run function baba:display/palette/underwater
execute if score palette baba matches 2 run function baba:display/palette/factory
execute if entity @s[scores={sprite=7620}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.algae.row8"}'
execute if entity @s[scores={move_frame=1..,move_dir=1,sprite=7620}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.algae.row8.down"}'
execute if entity @s[scores={move_frame=1..,move_dir=2,sprite=7620}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.algae.row7.down"}'
execute if entity @s[scores={sprite=14151}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.flag.row8"}'
execute if entity @s[scores={move_frame=1..,move_dir=1,sprite=14151}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.flag.row8.down"}'
execute if entity @s[scores={move_frame=1..,move_dir=2,sprite=14151}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.flag.row7.down"}'
execute if entity @s[scores={sprite=30686}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.key.row8"}'
execute if entity @s[scores={move_frame=1..,move_dir=1,sprite=30686}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.key.row8.down"}'
execute if entity @s[scores={move_frame=1..,move_dir=2,sprite=30686}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.key.row7.down"}'
execute if entity @s[scores={sprite=1043}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.love.row8"}'
execute if entity @s[scores={move_frame=1..,move_dir=1,sprite=1043}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.love.row8.down"}'
execute if entity @s[scores={move_frame=1..,move_dir=2,sprite=1043}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.love.row7.down"}'
execute if entity @s[scores={sprite=49848}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.ufo.row8"}'
execute if entity @s[scores={move_frame=1..,move_dir=1,sprite=49848}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.ufo.row8.down"}'
execute if entity @s[scores={move_frame=1..,move_dir=2,sprite=49848}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.ufo.row7.down"}'
execute if entity @s[scores={sprite=54021}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.door.row8"}'
execute if entity @s[scores={move_frame=1..,move_dir=1,sprite=54021}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.door.row8.down"}'
execute if entity @s[scores={move_frame=1..,move_dir=2,sprite=54021}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.door.row7.down"}'
execute if entity @s[scores={sprite=61188}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.flower.row8"}'
execute if entity @s[scores={move_frame=1..,move_dir=1,sprite=61188}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.flower.row8.down"}'
execute if entity @s[scores={move_frame=1..,move_dir=2,sprite=61188}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.flower.row7.down"}'
execute if entity @s[scores={sprite=22457}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.pillar.row8"}'
execute if entity @s[scores={move_frame=1..,move_dir=1,sprite=22457}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.pillar.row8.down"}'
execute if entity @s[scores={move_frame=1..,move_dir=2,sprite=22457}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.pillar.row7.down"}'
execute if entity @s[scores={sprite=13704}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.rock.row8"}'
execute if entity @s[scores={move_frame=1..,move_dir=1,sprite=13704}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.rock.row8.down"}'
execute if entity @s[scores={move_frame=1..,move_dir=2,sprite=13704}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.rock.row7.down"}'
execute if entity @s[scores={sprite=29188}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.tile.row8"}'
execute if entity @s[scores={move_frame=1..,move_dir=1,sprite=29188}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.tile.row8.down"}'
execute if entity @s[scores={move_frame=1..,move_dir=2,sprite=29188}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.tile.row7.down"}'
execute if entity @s[scores={sprite=3475}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.fruit.row8"}'
execute if entity @s[scores={move_frame=1..,move_dir=1,sprite=3475}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.fruit.row8.down"}'
execute if entity @s[scores={move_frame=1..,move_dir=2,sprite=3475}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.fruit.row7.down"}'
execute if entity @s[scores={sprite=50707}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.moon.row8"}'
execute if entity @s[scores={move_frame=1..,move_dir=1,sprite=50707}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.moon.row8.down"}'
execute if entity @s[scores={move_frame=1..,move_dir=2,sprite=50707}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.moon.row7.down"}'
execute if entity @s[scores={sprite=21096}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.star.row8"}'
execute if entity @s[scores={move_frame=1..,move_dir=1,sprite=21096}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.star.row8.down"}'
execute if entity @s[scores={move_frame=1..,move_dir=2,sprite=21096}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.star.row7.down"}'
execute if entity @s[scores={sprite=2451}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.tree.row8"}'
execute if entity @s[scores={move_frame=1..,move_dir=1,sprite=2451}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.tree.row8.down"}'
execute if entity @s[scores={move_frame=1..,move_dir=2,sprite=2451}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.tree.row7.down"}'
execute if entity @s[scores={sprite=12661}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.box.row8"}'
execute if entity @s[scores={move_frame=1..,move_dir=1,sprite=12661}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.box.row8.down"}'
execute if entity @s[scores={move_frame=1..,move_dir=2,sprite=12661}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.box.row7.down"}'
execute if entity @s[scores={sprite=56535}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.fire.row8"}'
execute if entity @s[scores={move_frame=1..,move_dir=1,sprite=56535}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.fire.row8.down"}'
execute if entity @s[scores={move_frame=1..,move_dir=2,sprite=56535}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.fire.row7.down"}'
execute if entity @s[scores={sprite=58060}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.gate.row8"}'
execute if entity @s[scores={move_frame=1..,move_dir=1,sprite=58060}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.gate.row8.down"}'
execute if entity @s[scores={move_frame=1..,move_dir=2,sprite=58060}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.gate.row7.down"}'
execute if entity @s[scores={sprite=49201}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.jelly.row8"}'
execute if entity @s[scores={move_frame=1..,move_dir=1,sprite=49201}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.jelly.row8.down"}'
execute if entity @s[scores={move_frame=1..,move_dir=2,sprite=49201}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.jelly.row7.down"}'
execute if entity @s[scores={sprite=55367}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.reed.row8"}'
execute if entity @s[scores={move_frame=1..,move_dir=1,sprite=55367}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.reed.row8.down"}'
execute if entity @s[scores={move_frame=1..,move_dir=2,sprite=55367}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.reed.row7.down"}'
execute if entity @s[scores={sprite=64585}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.sign.row8"}'
execute if entity @s[scores={move_frame=1..,move_dir=1,sprite=64585}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.sign.row8.down"}'
execute if entity @s[scores={move_frame=1..,move_dir=2,sprite=64585}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.sign.row7.down"}'
execute if entity @s[scores={sprite=33356}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.sun.row8"}'
execute if entity @s[scores={move_frame=1..,move_dir=1,sprite=33356}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.sun.row8.down"}'
execute if entity @s[scores={move_frame=1..,move_dir=2,sprite=33356}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.sun.row7.down"}'
execute if entity @s[scores={sprite=1108}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.fungi.row8"}'
execute if entity @s[scores={move_frame=1..,move_dir=1,sprite=1108}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.fungi.row8.down"}'
execute if entity @s[scores={move_frame=1..,move_dir=2,sprite=1108}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.fungi.row7.down"}'
execute if entity @s[scores={sprite=18040}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.husk.row8"}'
execute if entity @s[scores={move_frame=1..,move_dir=1,sprite=18040}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.husk.row8.down"}'
execute if entity @s[scores={move_frame=1..,move_dir=2,sprite=18040}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.husk.row7.down"}'
execute if entity @s[scores={sprite=23508}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.leaf.row8"}'
execute if entity @s[scores={move_frame=1..,move_dir=1,sprite=23508}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.leaf.row8.down"}'
execute if entity @s[scores={move_frame=1..,move_dir=2,sprite=23508}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.leaf.row7.down"}'
execute if entity @s[scores={sprite=39810}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.orb.row8"}'
execute if entity @s[scores={move_frame=1..,move_dir=1,sprite=39810}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.orb.row8.down"}'
execute if entity @s[scores={move_frame=1..,move_dir=2,sprite=39810}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.orb.row7.down"}'
execute if entity @s[scores={sprite=32385}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.trees.row8"}'
execute if entity @s[scores={move_frame=1..,move_dir=1,sprite=32385}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.trees.row8.down"}'
execute if entity @s[scores={move_frame=1..,move_dir=2,sprite=32385}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.trees.row7.down"}'
execute if entity @s[scores={sprite=20568}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.cake.row8"}'
execute if entity @s[scores={move_frame=1..,move_dir=1,sprite=20568}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.cake.row8.down"}'
execute if entity @s[scores={move_frame=1..,move_dir=2,sprite=20568}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.cake.row7.down"}'
execute if entity @s[scores={sprite=58614}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.dot.row8"}'
execute if entity @s[scores={move_frame=1..,move_dir=1,sprite=58614}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.dot.row8.down"}'
execute if entity @s[scores={move_frame=1..,move_dir=2,sprite=58614}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.dot.row7.down"}'
execute if entity @s[scores={sprite=28145}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.foliage.row8"}'
execute if entity @s[scores={move_frame=1..,move_dir=1,sprite=28145}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.foliage.row8.down"}'
execute if entity @s[scores={move_frame=1..,move_dir=2,sprite=28145}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.foliage.row7.down"}'
execute if entity @s[scores={sprite=31241}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.rose.row8"}'
execute if entity @s[scores={move_frame=1..,move_dir=1,sprite=31241}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.rose.row8.down"}'
execute if entity @s[scores={move_frame=1..,move_dir=2,sprite=31241}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.rose.row7.down"}'
execute if entity @s[scores={sprite=42872}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.dust.row8"}'
execute if entity @s[scores={move_frame=1..,move_dir=1,sprite=42872}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.dust.row8.down"}'
execute if entity @s[scores={move_frame=1..,move_dir=2,sprite=42872}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.dust.row7.down"}'
execute if entity @s[scores={sprite=59074}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.fungus.row8"}'
execute if entity @s[scores={move_frame=1..,move_dir=1,sprite=59074}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.fungus.row8.down"}'
execute if entity @s[scores={move_frame=1..,move_dir=2,sprite=59074}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.fungus.row7.down"}'
execute if entity @s[scores={sprite=40563}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.husks.row8"}'
execute if entity @s[scores={move_frame=1..,move_dir=1,sprite=40563}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.husks.row8.down"}'
execute if entity @s[scores={move_frame=1..,move_dir=2,sprite=40563}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.husks.row7.down"}'
execute if entity @s[scores={sprite=58937}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.stump.row8"}'
execute if entity @s[scores={move_frame=1..,move_dir=1,sprite=58937}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.stump.row8.down"}'
execute if entity @s[scores={move_frame=1..,move_dir=2,sprite=58937}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.stump.row7.down"}'
execute if entity @s[scores={sprite=60402}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.starfish.row8"}'
execute if entity @s[scores={move_frame=1..,move_dir=1,sprite=60402}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.starfish.row8.down"}'
execute if entity @s[scores={move_frame=1..,move_dir=2,sprite=60402}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.starfish.row7.down"}'
execute if entity @s[scores={sprite=42294}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.blossom.row8"}'
execute if entity @s[scores={move_frame=1..,move_dir=1,sprite=42294}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.blossom.row8.down"}'
execute if entity @s[scores={move_frame=1..,move_dir=2,sprite=42294}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.blossom.row7.down"}'
execute if entity @s[scores={sprite=26837}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.level.row8"}'
execute if entity @s[scores={move_frame=1..,move_dir=1,sprite=26837}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.level.row8.down"}'
execute if entity @s[scores={move_frame=1..,move_dir=2,sprite=26837}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.level.row7.down"}'
execute if entity @s[scores={sprite=2526}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.cursor.row8"}'
execute if entity @s[scores={move_frame=1..,move_dir=1,sprite=2526}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.cursor.row8.down"}'
execute if entity @s[scores={move_frame=1..,move_dir=2,sprite=2526}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.cursor.row7.down"}'
execute if entity @s[nbt={data:{sprite:"baba"}}] run function baba:display/add_object/row8/baba
execute if entity @s[nbt={data:{sprite:"text"}}] run function baba:display/add_object/row8/text
execute if entity @s[nbt={data:{sprite:"keke"}}] run function baba:display/add_object/row8/keke
execute if entity @s[nbt={data:{sprite:"me"}}] run function baba:display/add_object/row8/me
execute if entity @s[nbt={data:{sprite:"robot"}}] run function baba:display/add_object/row8/robot
execute if entity @s[nbt={data:{sprite:"belt"}}] run function baba:display/add_object/row8/belt
execute if entity @s[nbt={data:{sprite:"bird"}}] run function baba:display/add_object/row8/bird
execute if entity @s[nbt={data:{sprite:"bug"}}] run function baba:display/add_object/row8/bug
execute if entity @s[nbt={data:{sprite:"crab"}}] run function baba:display/add_object/row8/crab
execute if entity @s[nbt={data:{sprite:"rocket"}}] run function baba:display/add_object/row8/rocket
execute if entity @s[nbt={data:{sprite:"skull"}}] run function baba:display/add_object/row8/skull
execute if entity @s[nbt={data:{sprite:"ghost"}}] run function baba:display/add_object/row8/ghost
execute if entity @s[nbt={data:{sprite:"statue"}}] run function baba:display/add_object/row8/statue
execute if entity @s[nbt={data:{sprite:"bolt"}}] run function baba:display/add_object/row8/bolt
execute if entity @s[nbt={data:{sprite:"hand"}}] run function baba:display/add_object/row8/hand
execute if entity @s[nbt={data:{sprite:"bat"}}] run function baba:display/add_object/row8/bat
execute if entity @s[nbt={data:{sprite:"bubble"}}] run function baba:display/add_object/row8/bubble
execute if entity @s[nbt={data:{sprite:"cog"}}] run function baba:display/add_object/row8/cog
execute if entity @s[nbt={data:{sprite:"cloud"}}] run function baba:display/add_object/row8/cloud
execute if entity @s[nbt={data:{sprite:"fence"}}] run function baba:display/add_object/row8/fence
execute if entity @s[nbt={data:{sprite:"grass"}}] run function baba:display/add_object/row8/grass
execute if entity @s[nbt={data:{sprite:"hedge"}}] run function baba:display/add_object/row8/hedge
execute if entity @s[nbt={data:{sprite:"ice"}}] run function baba:display/add_object/row8/ice
execute if entity @s[nbt={data:{sprite:"lava"}}] run function baba:display/add_object/row8/lava
execute if entity @s[nbt={data:{sprite:"water"}}] run function baba:display/add_object/row8/water
execute if entity @s[nbt={data:{sprite:"bog"}}] run function baba:display/add_object/row8/bog
execute if entity @s[nbt={data:{sprite:"line"}}] run function baba:display/add_object/row8/line
execute if entity @s[nbt={data:{sprite:"pipe"}}] run function baba:display/add_object/row8/pipe
execute if entity @s[nbt={data:{sprite:"rubble"}}] run function baba:display/add_object/row8/rubble
execute if entity @s[nbt={data:{sprite:"wall"}}] run function baba:display/add_object/row8/wall
execute if entity @s[nbt={data:{sprite:"brick"}}] run function baba:display/add_object/row8/brick
execute if entity @s[nbt={data:{sprite:"cliff"}}] run function baba:display/add_object/row8/cliff
execute if entity @s[scores={move_frame=1..,move_dir=3}] run data modify storage baba:main object_text insert 1 value '{"translate":"baba.nudge_right"}'
execute if entity @s[scores={move_frame=1..,move_dir=3}] run data modify storage baba:main object_text append value '{"translate":"baba.nudge_left"}'
execute if entity @s[scores={move_frame=1..,move_dir=4}] run data modify storage baba:main object_text insert 1 value '{"translate":"baba.nudge_left"}'
execute if entity @s[scores={move_frame=1..,move_dir=4}] run data modify storage baba:main object_text append value '{"translate":"baba.nudge_right"}'
item modify entity 89fd5d65-fc19-4848-8c51-e72ea0c1d85c weapon.mainhand baba:color_text
data modify storage baba:main text append from entity 89fd5d65-fc19-4848-8c51-e72ea0c1d85c HandItems[0].tag.display.Name
execute if entity @s[nbt={data:{sprite:"text"}}] run function baba:display/add_object/row8/text.overlay
execute if entity @s[nbt={data:{sprite:"level"}}] run function baba:display/add_object/row8/level.overlay
