scoreboard players operation color baba = @s color
execute if entity @s[scores={text_used=0}] run function baba:display/disabled_text
execute if score palette baba matches 0 run function baba:display/palette/default
execute if score palette baba matches 1 run function baba:display/palette/underwater
execute if score palette baba matches 2 run function baba:display/palette/factory
execute if entity @s[nbt={data:{sprite:"algae"}}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.algae.row17"}'
execute if entity @s[nbt={data:{sprite:"flag"}}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.flag.row17"}'
execute if entity @s[nbt={data:{sprite:"key"}}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.key.row17"}'
execute if entity @s[nbt={data:{sprite:"love"}}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.love.row17"}'
execute if entity @s[nbt={data:{sprite:"ufo"}}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.ufo.row17"}'
execute if entity @s[nbt={data:{sprite:"door"}}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.door.row17"}'
execute if entity @s[nbt={data:{sprite:"flower"}}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.flower.row17"}'
execute if entity @s[nbt={data:{sprite:"pillar"}}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.pillar.row17"}'
execute if entity @s[nbt={data:{sprite:"rock"}}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.rock.row17"}'
execute if entity @s[nbt={data:{sprite:"tile"}}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.tile.row17"}'
execute if entity @s[nbt={data:{sprite:"fruit"}}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.fruit.row17"}'
execute if entity @s[nbt={data:{sprite:"moon"}}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.moon.row17"}'
execute if entity @s[nbt={data:{sprite:"star"}}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.star.row17"}'
execute if entity @s[nbt={data:{sprite:"tree"}}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.tree.row17"}'
execute if entity @s[nbt={data:{sprite:"box"}}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.box.row17"}'
execute if entity @s[nbt={data:{sprite:"fire"}}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.fire.row17"}'
execute if entity @s[nbt={data:{sprite:"gate"}}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.gate.row17"}'
execute if entity @s[nbt={data:{sprite:"jelly"}}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.jelly.row17"}'
execute if entity @s[nbt={data:{sprite:"reed"}}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.reed.row17"}'
execute if entity @s[nbt={data:{sprite:"sign"}}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.sign.row17"}'
execute if entity @s[nbt={data:{sprite:"sun"}}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.sun.row17"}'
execute if entity @s[nbt={data:{sprite:"fungi"}}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.fungi.row17"}'
execute if entity @s[nbt={data:{sprite:"husk"}}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.husk.row17"}'
execute if entity @s[nbt={data:{sprite:"leaf"}}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.leaf.row17"}'
execute if entity @s[nbt={data:{sprite:"orb"}}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.orb.row17"}'
execute if entity @s[nbt={data:{sprite:"trees"}}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.trees.row17"}'
execute if entity @s[nbt={data:{sprite:"cake"}}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.cake.row17"}'
execute if entity @s[nbt={data:{sprite:"dot"}}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.dot.row17"}'
execute if entity @s[nbt={data:{sprite:"foliage"}}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.foliage.row17"}'
execute if entity @s[nbt={data:{sprite:"rose"}}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.rose.row17"}'
execute if entity @s[nbt={data:{sprite:"dust"}}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.dust.row17"}'
execute if entity @s[nbt={data:{sprite:"fungus"}}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.fungus.row17"}'
execute if entity @s[nbt={data:{sprite:"husks"}}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.husks.row17"}'
execute if entity @s[nbt={data:{sprite:"stump"}}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.stump.row17"}'
execute if entity @s[nbt={data:{sprite:"starfish"}}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.starfish.row17"}'
execute if entity @s[nbt={data:{sprite:"blossom"}}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.blossom.row17"}'
execute if entity @s[nbt={data:{sprite:"level"}}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.level.row17"}'
execute if entity @s[nbt={data:{sprite:"cursor"}}] run data modify storage baba:main object_text[1] set value '{"translate":"baba.cursor.row17"}'
execute if entity @s[nbt={data:{sprite:"baba"}}] run function baba:display/add_object/row17/baba
execute if entity @s[nbt={data:{sprite:"text"}}] run function baba:display/add_object/row17/text
execute if entity @s[nbt={data:{sprite:"keke"}}] run function baba:display/add_object/row17/keke
execute if entity @s[nbt={data:{sprite:"me"}}] run function baba:display/add_object/row17/me
execute if entity @s[nbt={data:{sprite:"robot"}}] run function baba:display/add_object/row17/robot
execute if entity @s[nbt={data:{sprite:"belt"}}] run function baba:display/add_object/row17/belt
execute if entity @s[nbt={data:{sprite:"bird"}}] run function baba:display/add_object/row17/bird
execute if entity @s[nbt={data:{sprite:"bug"}}] run function baba:display/add_object/row17/bug
execute if entity @s[nbt={data:{sprite:"crab"}}] run function baba:display/add_object/row17/crab
execute if entity @s[nbt={data:{sprite:"rocket"}}] run function baba:display/add_object/row17/rocket
execute if entity @s[nbt={data:{sprite:"skull"}}] run function baba:display/add_object/row17/skull
execute if entity @s[nbt={data:{sprite:"ghost"}}] run function baba:display/add_object/row17/ghost
execute if entity @s[nbt={data:{sprite:"statue"}}] run function baba:display/add_object/row17/statue
execute if entity @s[nbt={data:{sprite:"bolt"}}] run function baba:display/add_object/row17/bolt
execute if entity @s[nbt={data:{sprite:"hand"}}] run function baba:display/add_object/row17/hand
execute if entity @s[nbt={data:{sprite:"bat"}}] run function baba:display/add_object/row17/bat
execute if entity @s[nbt={data:{sprite:"bubble"}}] run function baba:display/add_object/row17/bubble
execute if entity @s[nbt={data:{sprite:"cog"}}] run function baba:display/add_object/row17/cog
execute if entity @s[nbt={data:{sprite:"cloud"}}] run function baba:display/add_object/row17/cloud
execute if entity @s[nbt={data:{sprite:"fence"}}] run function baba:display/add_object/row17/fence
execute if entity @s[nbt={data:{sprite:"grass"}}] run function baba:display/add_object/row17/grass
execute if entity @s[nbt={data:{sprite:"hedge"}}] run function baba:display/add_object/row17/hedge
execute if entity @s[nbt={data:{sprite:"ice"}}] run function baba:display/add_object/row17/ice
execute if entity @s[nbt={data:{sprite:"lava"}}] run function baba:display/add_object/row17/lava
execute if entity @s[nbt={data:{sprite:"water"}}] run function baba:display/add_object/row17/water
execute if entity @s[nbt={data:{sprite:"bog"}}] run function baba:display/add_object/row17/bog
execute if entity @s[nbt={data:{sprite:"line"}}] run function baba:display/add_object/row17/line
execute if entity @s[nbt={data:{sprite:"pipe"}}] run function baba:display/add_object/row17/pipe
execute if entity @s[nbt={data:{sprite:"rubble"}}] run function baba:display/add_object/row17/rubble
execute if entity @s[nbt={data:{sprite:"wall"}}] run function baba:display/add_object/row17/wall
execute if entity @s[nbt={data:{sprite:"brick"}}] run function baba:display/add_object/row17/brick
execute if entity @s[nbt={data:{sprite:"cliff"}}] run function baba:display/add_object/row17/cliff
item modify entity 89fd5d65-fc19-4848-8c51-e72ea0c1d85c weapon.mainhand baba:color_text
data modify storage baba:main text append from entity 89fd5d65-fc19-4848-8c51-e72ea0c1d85c HandItems[0].tag.display.Name
execute if entity @s[nbt={data:{sprite:"text"}}] run function baba:display/add_object/row17/text.overlay
execute if entity @s[nbt={data:{sprite:"level"}}] run function baba:display/add_object/row17/level.overlay
