scoreboard players operation color baba = @s color
execute if entity @s[tag=is_text,scores={text_used=0}] run function baba:display/disabled_text
execute if score palette baba matches 0 run function baba:display/palette/default
execute if score palette baba matches 1 run function baba:display/palette/underwater
execute if score palette baba matches 2 run function baba:display/palette/factory
execute if entity @s[nbt={data:{sprite:"algae"}}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.algae.row5"}'
execute if entity @s[nbt={data:{sprite:"flag"}}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.flag.row5"}'
execute if entity @s[nbt={data:{sprite:"key"}}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.key.row5"}'
execute if entity @s[nbt={data:{sprite:"love"}}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.love.row5"}'
execute if entity @s[nbt={data:{sprite:"ufo"}}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.ufo.row5"}'
execute if entity @s[nbt={data:{sprite:"door"}}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.door.row5"}'
execute if entity @s[nbt={data:{sprite:"flower"}}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.flower.row5"}'
execute if entity @s[nbt={data:{sprite:"pillar"}}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.pillar.row5"}'
execute if entity @s[nbt={data:{sprite:"rock"}}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.rock.row5"}'
execute if entity @s[nbt={data:{sprite:"tile"}}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.tile.row5"}'
execute if entity @s[nbt={data:{sprite:"fruit"}}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.fruit.row5"}'
execute if entity @s[nbt={data:{sprite:"moon"}}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.moon.row5"}'
execute if entity @s[nbt={data:{sprite:"star"}}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.star.row5"}'
execute if entity @s[nbt={data:{sprite:"tree"}}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.tree.row5"}'
execute if entity @s[nbt={data:{sprite:"box"}}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.box.row5"}'
execute if entity @s[nbt={data:{sprite:"fire"}}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.fire.row5"}'
execute if entity @s[nbt={data:{sprite:"gate"}}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.gate.row5"}'
execute if entity @s[nbt={data:{sprite:"jelly"}}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.jelly.row5"}'
execute if entity @s[nbt={data:{sprite:"reed"}}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.reed.row5"}'
execute if entity @s[nbt={data:{sprite:"sign"}}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.sign.row5"}'
execute if entity @s[nbt={data:{sprite:"sun"}}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.sun.row5"}'
execute if entity @s[nbt={data:{sprite:"fungi"}}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.fungi.row5"}'
execute if entity @s[nbt={data:{sprite:"husk"}}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.husk.row5"}'
execute if entity @s[nbt={data:{sprite:"leaf"}}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.leaf.row5"}'
execute if entity @s[nbt={data:{sprite:"orb"}}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.orb.row5"}'
execute if entity @s[nbt={data:{sprite:"trees"}}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.trees.row5"}'
execute if entity @s[nbt={data:{sprite:"cake"}}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.cake.row5"}'
execute if entity @s[nbt={data:{sprite:"dot"}}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.dot.row5"}'
execute if entity @s[nbt={data:{sprite:"foliage"}}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.foliage.row5"}'
execute if entity @s[nbt={data:{sprite:"rose"}}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.rose.row5"}'
execute if entity @s[nbt={data:{sprite:"dust"}}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.dust.row5"}'
execute if entity @s[nbt={data:{sprite:"fungus"}}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.fungus.row5"}'
execute if entity @s[nbt={data:{sprite:"husks"}}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.husks.row5"}'
execute if entity @s[nbt={data:{sprite:"stump"}}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.stump.row5"}'
execute if entity @s[nbt={data:{sprite:"starfish"}}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.starfish.row5"}'
execute if entity @s[nbt={data:{sprite:"blossom"}}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.blossom.row5"}'
execute if entity @s[nbt={data:{sprite:"level"}}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.level.row5"}'
execute if entity @s[nbt={data:{sprite:"cursor"}}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.cursor.row5"}'
execute if entity @s[nbt={data:{sprite:"baba"}}] run function baba:display/add_object/row5/baba
execute if entity @s[nbt={data:{sprite:"text"}}] run function baba:display/add_object/row5/text
execute if entity @s[nbt={data:{sprite:"keke"}}] run function baba:display/add_object/row5/keke
execute if entity @s[nbt={data:{sprite:"me"}}] run function baba:display/add_object/row5/me
execute if entity @s[nbt={data:{sprite:"robot"}}] run function baba:display/add_object/row5/robot
execute if entity @s[nbt={data:{sprite:"belt"}}] run function baba:display/add_object/row5/belt
execute if entity @s[nbt={data:{sprite:"bird"}}] run function baba:display/add_object/row5/bird
execute if entity @s[nbt={data:{sprite:"bug"}}] run function baba:display/add_object/row5/bug
execute if entity @s[nbt={data:{sprite:"crab"}}] run function baba:display/add_object/row5/crab
execute if entity @s[nbt={data:{sprite:"rocket"}}] run function baba:display/add_object/row5/rocket
execute if entity @s[nbt={data:{sprite:"skull"}}] run function baba:display/add_object/row5/skull
execute if entity @s[nbt={data:{sprite:"ghost"}}] run function baba:display/add_object/row5/ghost
execute if entity @s[nbt={data:{sprite:"statue"}}] run function baba:display/add_object/row5/statue
execute if entity @s[nbt={data:{sprite:"bolt"}}] run function baba:display/add_object/row5/bolt
execute if entity @s[nbt={data:{sprite:"hand"}}] run function baba:display/add_object/row5/hand
execute if entity @s[nbt={data:{sprite:"bat"}}] run function baba:display/add_object/row5/bat
execute if entity @s[nbt={data:{sprite:"bubble"}}] run function baba:display/add_object/row5/bubble
execute if entity @s[nbt={data:{sprite:"cog"}}] run function baba:display/add_object/row5/cog
execute if entity @s[nbt={data:{sprite:"cloud"}}] run function baba:display/add_object/row5/cloud
execute if entity @s[nbt={data:{sprite:"fence"}}] run function baba:display/add_object/row5/fence
execute if entity @s[nbt={data:{sprite:"grass"}}] run function baba:display/add_object/row5/grass
execute if entity @s[nbt={data:{sprite:"hedge"}}] run function baba:display/add_object/row5/hedge
execute if entity @s[nbt={data:{sprite:"ice"}}] run function baba:display/add_object/row5/ice
execute if entity @s[nbt={data:{sprite:"lava"}}] run function baba:display/add_object/row5/lava
execute if entity @s[nbt={data:{sprite:"water"}}] run function baba:display/add_object/row5/water
execute if entity @s[nbt={data:{sprite:"bog"}}] run function baba:display/add_object/row5/bog
execute if entity @s[nbt={data:{sprite:"line"}}] run function baba:display/add_object/row5/line
execute if entity @s[nbt={data:{sprite:"pipe"}}] run function baba:display/add_object/row5/pipe
execute if entity @s[nbt={data:{sprite:"rubble"}}] run function baba:display/add_object/row5/rubble
execute if entity @s[nbt={data:{sprite:"wall"}}] run function baba:display/add_object/row5/wall
execute if entity @s[nbt={data:{sprite:"brick"}}] run function baba:display/add_object/row5/brick
execute if entity @s[nbt={data:{sprite:"cliff"}}] run function baba:display/add_object/row5/cliff
item modify entity 89fd5d65-fc19-4848-8c51-e72ea0c1d85c weapon.mainhand baba:color_text
data modify storage baba:main text append from entity 89fd5d65-fc19-4848-8c51-e72ea0c1d85c HandItems[0].tag.display.Name
execute if entity @s[nbt={data:{sprite:"text"}}] run function baba:display/add_object/row5/text.overlay
execute if entity @s[nbt={data:{sprite:"level"}}] run function baba:display/add_object/row5/level.overlay
