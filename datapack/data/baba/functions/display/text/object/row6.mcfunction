scoreboard players operation color baba = @s color
execute if entity @s[scores={sprite=30442,text_used=0}] run function baba:display/inactive_text
execute if score palette baba matches 0 run function baba:display/text/palette/default
execute if score palette baba matches 1 run function baba:display/text/palette/underwater
execute if score palette baba matches 2 run function baba:display/text/palette/factory
execute if score palette baba matches 3 run function baba:display/text/palette/ruins
execute if score palette baba matches 4 run function baba:display/text/palette/autumn
execute if entity @s[scores={sprite=7620}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.algae.row6"}'
execute if entity @s[scores={sprite=7620,move_frame=1..,move_dir=1}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.algae.row6.down"}'
execute if entity @s[scores={sprite=7620,move_frame=1..,move_dir=2}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.algae.row5.down"}'
execute if entity @s[scores={sprite=14151}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.flag.row6"}'
execute if entity @s[scores={sprite=14151,move_frame=1..,move_dir=1}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.flag.row6.down"}'
execute if entity @s[scores={sprite=14151,move_frame=1..,move_dir=2}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.flag.row5.down"}'
execute if entity @s[scores={sprite=30686}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.key.row6"}'
execute if entity @s[scores={sprite=30686,move_frame=1..,move_dir=1}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.key.row6.down"}'
execute if entity @s[scores={sprite=30686,move_frame=1..,move_dir=2}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.key.row5.down"}'
execute if entity @s[scores={sprite=1043}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.love.row6"}'
execute if entity @s[scores={sprite=1043,move_frame=1..,move_dir=1}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.love.row6.down"}'
execute if entity @s[scores={sprite=1043,move_frame=1..,move_dir=2}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.love.row5.down"}'
execute if entity @s[scores={sprite=49848}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.ufo.row6"}'
execute if entity @s[scores={sprite=49848,move_frame=1..,move_dir=1}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.ufo.row6.down"}'
execute if entity @s[scores={sprite=49848,move_frame=1..,move_dir=2}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.ufo.row5.down"}'
execute if entity @s[scores={sprite=54021}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.door.row6"}'
execute if entity @s[scores={sprite=54021,move_frame=1..,move_dir=1}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.door.row6.down"}'
execute if entity @s[scores={sprite=54021,move_frame=1..,move_dir=2}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.door.row5.down"}'
execute if entity @s[scores={sprite=61188}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.flower.row6"}'
execute if entity @s[scores={sprite=61188,move_frame=1..,move_dir=1}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.flower.row6.down"}'
execute if entity @s[scores={sprite=61188,move_frame=1..,move_dir=2}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.flower.row5.down"}'
execute if entity @s[scores={sprite=34898}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.violet.row6"}'
execute if entity @s[scores={sprite=34898,move_frame=1..,move_dir=1}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.violet.row6.down"}'
execute if entity @s[scores={sprite=34898,move_frame=1..,move_dir=2}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.violet.row5.down"}'
execute if entity @s[scores={sprite=22457}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.pillar.row6"}'
execute if entity @s[scores={sprite=22457,move_frame=1..,move_dir=1}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.pillar.row6.down"}'
execute if entity @s[scores={sprite=22457,move_frame=1..,move_dir=2}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.pillar.row5.down"}'
execute if entity @s[scores={sprite=13704}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.rock.row6"}'
execute if entity @s[scores={sprite=13704,move_frame=1..,move_dir=1}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.rock.row6.down"}'
execute if entity @s[scores={sprite=13704,move_frame=1..,move_dir=2}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.rock.row5.down"}'
execute if entity @s[scores={sprite=29188}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.tile.row6"}'
execute if entity @s[scores={sprite=29188,move_frame=1..,move_dir=1}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.tile.row6.down"}'
execute if entity @s[scores={sprite=29188,move_frame=1..,move_dir=2}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.tile.row5.down"}'
execute if entity @s[scores={sprite=3475}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.fruit.row6"}'
execute if entity @s[scores={sprite=3475,move_frame=1..,move_dir=1}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.fruit.row6.down"}'
execute if entity @s[scores={sprite=3475,move_frame=1..,move_dir=2}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.fruit.row5.down"}'
execute if entity @s[scores={sprite=50707}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.moon.row6"}'
execute if entity @s[scores={sprite=50707,move_frame=1..,move_dir=1}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.moon.row6.down"}'
execute if entity @s[scores={sprite=50707,move_frame=1..,move_dir=2}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.moon.row5.down"}'
execute if entity @s[scores={sprite=21096}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.star.row6"}'
execute if entity @s[scores={sprite=21096,move_frame=1..,move_dir=1}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.star.row6.down"}'
execute if entity @s[scores={sprite=21096,move_frame=1..,move_dir=2}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.star.row5.down"}'
execute if entity @s[scores={sprite=2451}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.tree.row6"}'
execute if entity @s[scores={sprite=2451,move_frame=1..,move_dir=1}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.tree.row6.down"}'
execute if entity @s[scores={sprite=2451,move_frame=1..,move_dir=2}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.tree.row5.down"}'
execute if entity @s[scores={sprite=12661}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.box.row6"}'
execute if entity @s[scores={sprite=12661,move_frame=1..,move_dir=1}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.box.row6.down"}'
execute if entity @s[scores={sprite=12661,move_frame=1..,move_dir=2}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.box.row5.down"}'
execute if entity @s[scores={sprite=56535}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.fire.row6"}'
execute if entity @s[scores={sprite=56535,move_frame=1..,move_dir=1}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.fire.row6.down"}'
execute if entity @s[scores={sprite=56535,move_frame=1..,move_dir=2}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.fire.row5.down"}'
execute if entity @s[scores={sprite=58060}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.gate.row6"}'
execute if entity @s[scores={sprite=58060,move_frame=1..,move_dir=1}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.gate.row6.down"}'
execute if entity @s[scores={sprite=58060,move_frame=1..,move_dir=2}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.gate.row5.down"}'
execute if entity @s[scores={sprite=49201}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.jelly.row6"}'
execute if entity @s[scores={sprite=49201,move_frame=1..,move_dir=1}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.jelly.row6.down"}'
execute if entity @s[scores={sprite=49201,move_frame=1..,move_dir=2}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.jelly.row5.down"}'
execute if entity @s[scores={sprite=55367}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.reed.row6"}'
execute if entity @s[scores={sprite=55367,move_frame=1..,move_dir=1}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.reed.row6.down"}'
execute if entity @s[scores={sprite=55367,move_frame=1..,move_dir=2}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.reed.row5.down"}'
execute if entity @s[scores={sprite=64585}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.sign.row6"}'
execute if entity @s[scores={sprite=64585,move_frame=1..,move_dir=1}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.sign.row6.down"}'
execute if entity @s[scores={sprite=64585,move_frame=1..,move_dir=2}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.sign.row5.down"}'
execute if entity @s[scores={sprite=33356}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.sun.row6"}'
execute if entity @s[scores={sprite=33356,move_frame=1..,move_dir=1}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.sun.row6.down"}'
execute if entity @s[scores={sprite=33356,move_frame=1..,move_dir=2}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.sun.row5.down"}'
execute if entity @s[scores={sprite=1108}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.fungi.row6"}'
execute if entity @s[scores={sprite=1108,move_frame=1..,move_dir=1}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.fungi.row6.down"}'
execute if entity @s[scores={sprite=1108,move_frame=1..,move_dir=2}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.fungi.row5.down"}'
execute if entity @s[scores={sprite=18040}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.husk.row6"}'
execute if entity @s[scores={sprite=18040,move_frame=1..,move_dir=1}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.husk.row6.down"}'
execute if entity @s[scores={sprite=18040,move_frame=1..,move_dir=2}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.husk.row5.down"}'
execute if entity @s[scores={sprite=23508}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.leaf.row6"}'
execute if entity @s[scores={sprite=23508,move_frame=1..,move_dir=1}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.leaf.row6.down"}'
execute if entity @s[scores={sprite=23508,move_frame=1..,move_dir=2}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.leaf.row5.down"}'
execute if entity @s[scores={sprite=39810}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.orb.row6"}'
execute if entity @s[scores={sprite=39810,move_frame=1..,move_dir=1}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.orb.row6.down"}'
execute if entity @s[scores={sprite=39810,move_frame=1..,move_dir=2}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.orb.row5.down"}'
execute if entity @s[scores={sprite=32385}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.trees.row6"}'
execute if entity @s[scores={sprite=32385,move_frame=1..,move_dir=1}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.trees.row6.down"}'
execute if entity @s[scores={sprite=32385,move_frame=1..,move_dir=2}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.trees.row5.down"}'
execute if entity @s[scores={sprite=20568}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.cake.row6"}'
execute if entity @s[scores={sprite=20568,move_frame=1..,move_dir=1}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.cake.row6.down"}'
execute if entity @s[scores={sprite=20568,move_frame=1..,move_dir=2}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.cake.row5.down"}'
execute if entity @s[scores={sprite=58614}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.dot.row6"}'
execute if entity @s[scores={sprite=58614,move_frame=1..,move_dir=1}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.dot.row6.down"}'
execute if entity @s[scores={sprite=58614,move_frame=1..,move_dir=2}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.dot.row5.down"}'
execute if entity @s[scores={sprite=28145}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.foliage.row6"}'
execute if entity @s[scores={sprite=28145,move_frame=1..,move_dir=1}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.foliage.row6.down"}'
execute if entity @s[scores={sprite=28145,move_frame=1..,move_dir=2}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.foliage.row5.down"}'
execute if entity @s[scores={sprite=31241}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.rose.row6"}'
execute if entity @s[scores={sprite=31241,move_frame=1..,move_dir=1}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.rose.row6.down"}'
execute if entity @s[scores={sprite=31241,move_frame=1..,move_dir=2}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.rose.row5.down"}'
execute if entity @s[scores={sprite=42872}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.dust.row6"}'
execute if entity @s[scores={sprite=42872,move_frame=1..,move_dir=1}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.dust.row6.down"}'
execute if entity @s[scores={sprite=42872,move_frame=1..,move_dir=2}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.dust.row5.down"}'
execute if entity @s[scores={sprite=59074}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.fungus.row6"}'
execute if entity @s[scores={sprite=59074,move_frame=1..,move_dir=1}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.fungus.row6.down"}'
execute if entity @s[scores={sprite=59074,move_frame=1..,move_dir=2}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.fungus.row5.down"}'
execute if entity @s[scores={sprite=40563}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.husks.row6"}'
execute if entity @s[scores={sprite=40563,move_frame=1..,move_dir=1}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.husks.row6.down"}'
execute if entity @s[scores={sprite=40563,move_frame=1..,move_dir=2}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.husks.row5.down"}'
execute if entity @s[scores={sprite=58937}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.stump.row6"}'
execute if entity @s[scores={sprite=58937,move_frame=1..,move_dir=1}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.stump.row6.down"}'
execute if entity @s[scores={sprite=58937,move_frame=1..,move_dir=2}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.stump.row5.down"}'
execute if entity @s[scores={sprite=60402}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.starfish.row6"}'
execute if entity @s[scores={sprite=60402,move_frame=1..,move_dir=1}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.starfish.row6.down"}'
execute if entity @s[scores={sprite=60402,move_frame=1..,move_dir=2}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.starfish.row5.down"}'
execute if entity @s[scores={sprite=42294}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.blossom.row6"}'
execute if entity @s[scores={sprite=42294,move_frame=1..,move_dir=1}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.blossom.row6.down"}'
execute if entity @s[scores={sprite=42294,move_frame=1..,move_dir=2}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.blossom.row5.down"}'
execute if entity @s[scores={sprite=26837}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.level.row6"}'
execute if entity @s[scores={sprite=26837,move_frame=1..,move_dir=1}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.level.row6.down"}'
execute if entity @s[scores={sprite=26837,move_frame=1..,move_dir=2}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.level.row5.down"}'
execute if entity @s[scores={sprite=2526}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.cursor.row6"}'
execute if entity @s[scores={sprite=2526,move_frame=1..,move_dir=1}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.cursor.row6.down"}'
execute if entity @s[scores={sprite=2526,move_frame=1..,move_dir=2}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.cursor.row5.down"}'
execute if entity @s[scores={sprite=23193}] run function baba:display/text/object/row6/baba
execute if entity @s[scores={sprite=30442}] run function baba:display/text/object/row6/text
execute if entity @s[scores={sprite=45087}] run function baba:display/text/object/row6/keke
execute if entity @s[scores={sprite=61656}] run function baba:display/text/object/row6/me
execute if entity @s[scores={sprite=8465}] run function baba:display/text/object/row6/robot
execute if entity @s[scores={sprite=35402}] run function baba:display/text/object/row6/belt
execute if entity @s[scores={sprite=33425}] run function baba:display/text/object/row6/bird
execute if entity @s[scores={sprite=65488}] run function baba:display/text/object/row6/bug
execute if entity @s[scores={sprite=23664}] run function baba:display/text/object/row6/crab
execute if entity @s[scores={sprite=20987}] run function baba:display/text/object/row6/rocket
execute if entity @s[scores={sprite=61583}] run function baba:display/text/object/row6/skull
execute if entity @s[scores={sprite=44713}] run function baba:display/text/object/row6/ghost
execute if entity @s[scores={sprite=25730}] run function baba:display/text/object/row6/statue
execute if entity @s[scores={sprite=45408}] run function baba:display/text/object/row6/bolt
execute if entity @s[scores={sprite=11302}] run function baba:display/text/object/row6/hand
execute if entity @s[scores={sprite=54043}] run function baba:display/text/object/row6/bat
execute if entity @s[scores={sprite=17246}] run function baba:display/text/object/row6/bubble
execute if entity @s[scores={sprite=22412}] run function baba:display/text/object/row6/cog
execute if entity @s[scores={sprite=48700}] run function baba:display/text/object/row6/cloud
execute if entity @s[scores={sprite=26472}] run function baba:display/text/object/row6/fence
execute if entity @s[scores={sprite=30894}] run function baba:display/text/object/row6/grass
execute if entity @s[scores={sprite=52941}] run function baba:display/text/object/row6/hedge
execute if entity @s[scores={sprite=26372}] run function baba:display/text/object/row6/ice
execute if entity @s[scores={sprite=28861}] run function baba:display/text/object/row6/lava
execute if entity @s[scores={sprite=42043}] run function baba:display/text/object/row6/water
execute if entity @s[scores={sprite=58667}] run function baba:display/text/object/row6/bog
execute if entity @s[scores={sprite=60823}] run function baba:display/text/object/row6/line
execute if entity @s[scores={sprite=40985}] run function baba:display/text/object/row6/pipe
execute if entity @s[scores={sprite=27096}] run function baba:display/text/object/row6/rubble
execute if entity @s[scores={sprite=49468}] run function baba:display/text/object/row6/wall
execute if entity @s[scores={sprite=41172}] run function baba:display/text/object/row6/brick
execute if entity @s[scores={sprite=32467}] run function baba:display/text/object/row6/cliff
execute if entity @s[scores={move_frame=1..,move_dir=3}] run data modify storage baba:main object_text insert 1 value '{"translate":"baba.nudge_right"}'
execute if entity @s[scores={move_frame=1..,move_dir=3}] run data modify storage baba:main object_text append value '{"translate":"baba.nudge_left"}'
execute if entity @s[scores={move_frame=1..,move_dir=4}] run data modify storage baba:main object_text insert 1 value '{"translate":"baba.nudge_left"}'
execute if entity @s[scores={move_frame=1..,move_dir=4}] run data modify storage baba:main object_text append value '{"translate":"baba.nudge_right"}'
item modify entity 89fd5d65-fc19-4848-8c51-e72ea0c1d85c weapon.mainhand baba:color_text
data modify storage baba:main text append from entity 89fd5d65-fc19-4848-8c51-e72ea0c1d85c HandItems[0].tag.display.Name
execute if entity @s[scores={sprite=30442}] run function baba:display/text/object/row6/text.overlay
execute if entity @s[scores={sprite=26837}] run function baba:display/text/object/row6/level.overlay
