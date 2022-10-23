scoreboard players operation color baba = @s color
execute if entity @s[tag=is_text,scores={text_used=0}] run function baba:display/disabled_text
execute if score palette baba matches 0 run function baba:display/palette/default
execute if score palette baba matches 1 run function baba:display/palette/underwater
execute if score palette baba matches 2 run function baba:display/palette/factory
execute if entity @s[scores={sprite=7620}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.algae.row0"}'
execute if entity @s[scores={move_frame=1..,move_dir=1,sprite=7620}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.algae.row0.down"}'
execute if entity @s[scores={move_frame=1..,move_dir=2,sprite=7620}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.algae.row-1.down"}'
execute if entity @s[scores={sprite=14151}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.flag.row0"}'
execute if entity @s[scores={move_frame=1..,move_dir=1,sprite=14151}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.flag.row0.down"}'
execute if entity @s[scores={move_frame=1..,move_dir=2,sprite=14151}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.flag.row-1.down"}'
execute if entity @s[scores={sprite=30686}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.key.row0"}'
execute if entity @s[scores={move_frame=1..,move_dir=1,sprite=30686}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.key.row0.down"}'
execute if entity @s[scores={move_frame=1..,move_dir=2,sprite=30686}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.key.row-1.down"}'
execute if entity @s[scores={sprite=1043}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.love.row0"}'
execute if entity @s[scores={move_frame=1..,move_dir=1,sprite=1043}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.love.row0.down"}'
execute if entity @s[scores={move_frame=1..,move_dir=2,sprite=1043}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.love.row-1.down"}'
execute if entity @s[scores={sprite=49848}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.ufo.row0"}'
execute if entity @s[scores={move_frame=1..,move_dir=1,sprite=49848}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.ufo.row0.down"}'
execute if entity @s[scores={move_frame=1..,move_dir=2,sprite=49848}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.ufo.row-1.down"}'
execute if entity @s[scores={sprite=54021}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.door.row0"}'
execute if entity @s[scores={move_frame=1..,move_dir=1,sprite=54021}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.door.row0.down"}'
execute if entity @s[scores={move_frame=1..,move_dir=2,sprite=54021}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.door.row-1.down"}'
execute if entity @s[scores={sprite=61188}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.flower.row0"}'
execute if entity @s[scores={move_frame=1..,move_dir=1,sprite=61188}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.flower.row0.down"}'
execute if entity @s[scores={move_frame=1..,move_dir=2,sprite=61188}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.flower.row-1.down"}'
execute if entity @s[scores={sprite=22457}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.pillar.row0"}'
execute if entity @s[scores={move_frame=1..,move_dir=1,sprite=22457}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.pillar.row0.down"}'
execute if entity @s[scores={move_frame=1..,move_dir=2,sprite=22457}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.pillar.row-1.down"}'
execute if entity @s[scores={sprite=13704}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.rock.row0"}'
execute if entity @s[scores={move_frame=1..,move_dir=1,sprite=13704}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.rock.row0.down"}'
execute if entity @s[scores={move_frame=1..,move_dir=2,sprite=13704}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.rock.row-1.down"}'
execute if entity @s[scores={sprite=29188}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.tile.row0"}'
execute if entity @s[scores={move_frame=1..,move_dir=1,sprite=29188}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.tile.row0.down"}'
execute if entity @s[scores={move_frame=1..,move_dir=2,sprite=29188}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.tile.row-1.down"}'
execute if entity @s[scores={sprite=3475}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.fruit.row0"}'
execute if entity @s[scores={move_frame=1..,move_dir=1,sprite=3475}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.fruit.row0.down"}'
execute if entity @s[scores={move_frame=1..,move_dir=2,sprite=3475}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.fruit.row-1.down"}'
execute if entity @s[scores={sprite=50707}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.moon.row0"}'
execute if entity @s[scores={move_frame=1..,move_dir=1,sprite=50707}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.moon.row0.down"}'
execute if entity @s[scores={move_frame=1..,move_dir=2,sprite=50707}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.moon.row-1.down"}'
execute if entity @s[scores={sprite=21096}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.star.row0"}'
execute if entity @s[scores={move_frame=1..,move_dir=1,sprite=21096}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.star.row0.down"}'
execute if entity @s[scores={move_frame=1..,move_dir=2,sprite=21096}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.star.row-1.down"}'
execute if entity @s[scores={sprite=2451}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.tree.row0"}'
execute if entity @s[scores={move_frame=1..,move_dir=1,sprite=2451}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.tree.row0.down"}'
execute if entity @s[scores={move_frame=1..,move_dir=2,sprite=2451}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.tree.row-1.down"}'
execute if entity @s[scores={sprite=12661}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.box.row0"}'
execute if entity @s[scores={move_frame=1..,move_dir=1,sprite=12661}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.box.row0.down"}'
execute if entity @s[scores={move_frame=1..,move_dir=2,sprite=12661}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.box.row-1.down"}'
execute if entity @s[scores={sprite=56535}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.fire.row0"}'
execute if entity @s[scores={move_frame=1..,move_dir=1,sprite=56535}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.fire.row0.down"}'
execute if entity @s[scores={move_frame=1..,move_dir=2,sprite=56535}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.fire.row-1.down"}'
execute if entity @s[scores={sprite=58060}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.gate.row0"}'
execute if entity @s[scores={move_frame=1..,move_dir=1,sprite=58060}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.gate.row0.down"}'
execute if entity @s[scores={move_frame=1..,move_dir=2,sprite=58060}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.gate.row-1.down"}'
execute if entity @s[scores={sprite=49201}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.jelly.row0"}'
execute if entity @s[scores={move_frame=1..,move_dir=1,sprite=49201}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.jelly.row0.down"}'
execute if entity @s[scores={move_frame=1..,move_dir=2,sprite=49201}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.jelly.row-1.down"}'
execute if entity @s[scores={sprite=55367}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.reed.row0"}'
execute if entity @s[scores={move_frame=1..,move_dir=1,sprite=55367}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.reed.row0.down"}'
execute if entity @s[scores={move_frame=1..,move_dir=2,sprite=55367}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.reed.row-1.down"}'
execute if entity @s[scores={sprite=64585}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.sign.row0"}'
execute if entity @s[scores={move_frame=1..,move_dir=1,sprite=64585}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.sign.row0.down"}'
execute if entity @s[scores={move_frame=1..,move_dir=2,sprite=64585}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.sign.row-1.down"}'
execute if entity @s[scores={sprite=33356}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.sun.row0"}'
execute if entity @s[scores={move_frame=1..,move_dir=1,sprite=33356}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.sun.row0.down"}'
execute if entity @s[scores={move_frame=1..,move_dir=2,sprite=33356}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.sun.row-1.down"}'
execute if entity @s[scores={sprite=1108}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.fungi.row0"}'
execute if entity @s[scores={move_frame=1..,move_dir=1,sprite=1108}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.fungi.row0.down"}'
execute if entity @s[scores={move_frame=1..,move_dir=2,sprite=1108}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.fungi.row-1.down"}'
execute if entity @s[scores={sprite=18040}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.husk.row0"}'
execute if entity @s[scores={move_frame=1..,move_dir=1,sprite=18040}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.husk.row0.down"}'
execute if entity @s[scores={move_frame=1..,move_dir=2,sprite=18040}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.husk.row-1.down"}'
execute if entity @s[scores={sprite=23508}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.leaf.row0"}'
execute if entity @s[scores={move_frame=1..,move_dir=1,sprite=23508}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.leaf.row0.down"}'
execute if entity @s[scores={move_frame=1..,move_dir=2,sprite=23508}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.leaf.row-1.down"}'
execute if entity @s[scores={sprite=39810}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.orb.row0"}'
execute if entity @s[scores={move_frame=1..,move_dir=1,sprite=39810}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.orb.row0.down"}'
execute if entity @s[scores={move_frame=1..,move_dir=2,sprite=39810}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.orb.row-1.down"}'
execute if entity @s[scores={sprite=32385}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.trees.row0"}'
execute if entity @s[scores={move_frame=1..,move_dir=1,sprite=32385}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.trees.row0.down"}'
execute if entity @s[scores={move_frame=1..,move_dir=2,sprite=32385}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.trees.row-1.down"}'
execute if entity @s[scores={sprite=20568}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.cake.row0"}'
execute if entity @s[scores={move_frame=1..,move_dir=1,sprite=20568}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.cake.row0.down"}'
execute if entity @s[scores={move_frame=1..,move_dir=2,sprite=20568}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.cake.row-1.down"}'
execute if entity @s[scores={sprite=58614}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.dot.row0"}'
execute if entity @s[scores={move_frame=1..,move_dir=1,sprite=58614}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.dot.row0.down"}'
execute if entity @s[scores={move_frame=1..,move_dir=2,sprite=58614}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.dot.row-1.down"}'
execute if entity @s[scores={sprite=28145}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.foliage.row0"}'
execute if entity @s[scores={move_frame=1..,move_dir=1,sprite=28145}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.foliage.row0.down"}'
execute if entity @s[scores={move_frame=1..,move_dir=2,sprite=28145}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.foliage.row-1.down"}'
execute if entity @s[scores={sprite=31241}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.rose.row0"}'
execute if entity @s[scores={move_frame=1..,move_dir=1,sprite=31241}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.rose.row0.down"}'
execute if entity @s[scores={move_frame=1..,move_dir=2,sprite=31241}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.rose.row-1.down"}'
execute if entity @s[scores={sprite=42872}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.dust.row0"}'
execute if entity @s[scores={move_frame=1..,move_dir=1,sprite=42872}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.dust.row0.down"}'
execute if entity @s[scores={move_frame=1..,move_dir=2,sprite=42872}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.dust.row-1.down"}'
execute if entity @s[scores={sprite=59074}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.fungus.row0"}'
execute if entity @s[scores={move_frame=1..,move_dir=1,sprite=59074}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.fungus.row0.down"}'
execute if entity @s[scores={move_frame=1..,move_dir=2,sprite=59074}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.fungus.row-1.down"}'
execute if entity @s[scores={sprite=40563}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.husks.row0"}'
execute if entity @s[scores={move_frame=1..,move_dir=1,sprite=40563}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.husks.row0.down"}'
execute if entity @s[scores={move_frame=1..,move_dir=2,sprite=40563}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.husks.row-1.down"}'
execute if entity @s[scores={sprite=58937}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.stump.row0"}'
execute if entity @s[scores={move_frame=1..,move_dir=1,sprite=58937}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.stump.row0.down"}'
execute if entity @s[scores={move_frame=1..,move_dir=2,sprite=58937}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.stump.row-1.down"}'
execute if entity @s[scores={sprite=60402}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.starfish.row0"}'
execute if entity @s[scores={move_frame=1..,move_dir=1,sprite=60402}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.starfish.row0.down"}'
execute if entity @s[scores={move_frame=1..,move_dir=2,sprite=60402}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.starfish.row-1.down"}'
execute if entity @s[scores={sprite=42294}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.blossom.row0"}'
execute if entity @s[scores={move_frame=1..,move_dir=1,sprite=42294}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.blossom.row0.down"}'
execute if entity @s[scores={move_frame=1..,move_dir=2,sprite=42294}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.blossom.row-1.down"}'
execute if entity @s[scores={sprite=26837}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.level.row0"}'
execute if entity @s[scores={move_frame=1..,move_dir=1,sprite=26837}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.level.row0.down"}'
execute if entity @s[scores={move_frame=1..,move_dir=2,sprite=26837}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.level.row-1.down"}'
execute if entity @s[scores={sprite=2526}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.cursor.row0"}'
execute if entity @s[scores={move_frame=1..,move_dir=1,sprite=2526}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.cursor.row0.down"}'
execute if entity @s[scores={move_frame=1..,move_dir=2,sprite=2526}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.cursor.row-1.down"}'
execute if entity @s[nbt={data:{sprite:"baba"}}] run function baba:display/add_object/row0/baba
execute if entity @s[nbt={data:{sprite:"text"}}] run function baba:display/add_object/row0/text
execute if entity @s[nbt={data:{sprite:"keke"}}] run function baba:display/add_object/row0/keke
execute if entity @s[nbt={data:{sprite:"me"}}] run function baba:display/add_object/row0/me
execute if entity @s[nbt={data:{sprite:"robot"}}] run function baba:display/add_object/row0/robot
execute if entity @s[nbt={data:{sprite:"belt"}}] run function baba:display/add_object/row0/belt
execute if entity @s[nbt={data:{sprite:"bird"}}] run function baba:display/add_object/row0/bird
execute if entity @s[nbt={data:{sprite:"bug"}}] run function baba:display/add_object/row0/bug
execute if entity @s[nbt={data:{sprite:"crab"}}] run function baba:display/add_object/row0/crab
execute if entity @s[nbt={data:{sprite:"rocket"}}] run function baba:display/add_object/row0/rocket
execute if entity @s[nbt={data:{sprite:"skull"}}] run function baba:display/add_object/row0/skull
execute if entity @s[nbt={data:{sprite:"ghost"}}] run function baba:display/add_object/row0/ghost
execute if entity @s[nbt={data:{sprite:"statue"}}] run function baba:display/add_object/row0/statue
execute if entity @s[nbt={data:{sprite:"bolt"}}] run function baba:display/add_object/row0/bolt
execute if entity @s[nbt={data:{sprite:"hand"}}] run function baba:display/add_object/row0/hand
execute if entity @s[nbt={data:{sprite:"bat"}}] run function baba:display/add_object/row0/bat
execute if entity @s[nbt={data:{sprite:"bubble"}}] run function baba:display/add_object/row0/bubble
execute if entity @s[nbt={data:{sprite:"cog"}}] run function baba:display/add_object/row0/cog
execute if entity @s[nbt={data:{sprite:"cloud"}}] run function baba:display/add_object/row0/cloud
execute if entity @s[nbt={data:{sprite:"fence"}}] run function baba:display/add_object/row0/fence
execute if entity @s[nbt={data:{sprite:"grass"}}] run function baba:display/add_object/row0/grass
execute if entity @s[nbt={data:{sprite:"hedge"}}] run function baba:display/add_object/row0/hedge
execute if entity @s[nbt={data:{sprite:"ice"}}] run function baba:display/add_object/row0/ice
execute if entity @s[nbt={data:{sprite:"lava"}}] run function baba:display/add_object/row0/lava
execute if entity @s[nbt={data:{sprite:"water"}}] run function baba:display/add_object/row0/water
execute if entity @s[nbt={data:{sprite:"bog"}}] run function baba:display/add_object/row0/bog
execute if entity @s[nbt={data:{sprite:"line"}}] run function baba:display/add_object/row0/line
execute if entity @s[nbt={data:{sprite:"pipe"}}] run function baba:display/add_object/row0/pipe
execute if entity @s[nbt={data:{sprite:"rubble"}}] run function baba:display/add_object/row0/rubble
execute if entity @s[nbt={data:{sprite:"wall"}}] run function baba:display/add_object/row0/wall
execute if entity @s[nbt={data:{sprite:"brick"}}] run function baba:display/add_object/row0/brick
execute if entity @s[nbt={data:{sprite:"cliff"}}] run function baba:display/add_object/row0/cliff
execute if entity @s[scores={move_frame=1..,move_dir=3}] run data modify storage baba:main object_text insert 1 value '{"translate":"baba.nudge_right"}'
execute if entity @s[scores={move_frame=1..,move_dir=3}] run data modify storage baba:main object_text append value '{"translate":"baba.nudge_left"}'
execute if entity @s[scores={move_frame=1..,move_dir=4}] run data modify storage baba:main object_text insert 1 value '{"translate":"baba.nudge_left"}'
execute if entity @s[scores={move_frame=1..,move_dir=4}] run data modify storage baba:main object_text append value '{"translate":"baba.nudge_right"}'
item modify entity 89fd5d65-fc19-4848-8c51-e72ea0c1d85c weapon.mainhand baba:color_text
data modify storage baba:main text append from entity 89fd5d65-fc19-4848-8c51-e72ea0c1d85c HandItems[0].tag.display.Name
execute if entity @s[nbt={data:{sprite:"text"}}] run function baba:display/add_object/row0/text.overlay
execute if entity @s[nbt={data:{sprite:"level"}}] run function baba:display/add_object/row0/level.overlay
