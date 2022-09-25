execute store result score column baba run data get entity @s Pos[2]
execute if score column baba > last_column baba run function baba:display/add_empty
execute store result score last_column baba run data get entity @s Pos[2]
execute if entity @s[nbt={data:{sprite:"text"}}] run function baba:display/check_tile/row8/text
execute if entity @s[nbt={data:{sprite:"belt"}}] run function baba:display/check_tile/row8/belt
execute if entity @s[nbt={data:{sprite:"bug"}}] run function baba:display/check_tile/row8/bug
execute if entity @s[nbt={data:{sprite:"crab"}}] run function baba:display/check_tile/row8/crab
execute if entity @s[nbt={data:{sprite:"rocket"}}] run function baba:display/check_tile/row8/rocket
execute if entity @s[nbt={data:{sprite:"skull"}}] run function baba:display/check_tile/row8/skull
execute if entity @s[nbt={data:{sprite:"ghost"}}] run function baba:display/check_tile/row8/ghost
execute if entity @s[nbt={data:{sprite:"statue"}}] run function baba:display/check_tile/row8/statue
execute if entity @s[nbt={data:{sprite:"bat"}}] run function baba:display/check_tile/row8/bat
execute if entity @s[nbt={data:{sprite:"cog"}}] run function baba:display/check_tile/row8/cog
execute if entity @s[nbt={data:{sprite:"baba"}}] run function baba:display/check_tile/row8/baba
execute if entity @s[nbt={data:{sprite:"keke"}}] run function baba:display/check_tile/row8/keke
execute if entity @s[nbt={data:{sprite:"me"}}] run function baba:display/check_tile/row8/me
execute if entity @s[nbt={data:{sprite:"robot"}}] run function baba:display/check_tile/row8/robot
execute if entity @s[nbt={data:{sprite:"algae"}}] run data modify storage baba:main text append value '[{"translate":"baba.overlay"},{"translate":"baba.algae.row8","color":"#5C8339"}]'
execute if entity @s[nbt={data:{sprite:"flag"}}] run data modify storage baba:main text append value '[{"translate":"baba.overlay"},{"translate":"baba.flag.row8","color":"#EDE285"}]'
execute if entity @s[nbt={data:{sprite:"key"}}] run data modify storage baba:main text append value '[{"translate":"baba.overlay"},{"translate":"baba.key.row8","color":"#EDE285"}]'
execute if entity @s[nbt={data:{sprite:"love"}}] run data modify storage baba:main text append value '[{"translate":"baba.overlay"},{"translate":"baba.love.row8","color":"#EB91CA"}]'
execute if entity @s[nbt={data:{sprite:"ufo"}}] run data modify storage baba:main text append value '[{"translate":"baba.overlay"},{"translate":"baba.ufo.row8","color":"#D9396A"}]'
execute if entity @s[nbt={data:{sprite:"door"}}] run data modify storage baba:main text append value '[{"translate":"baba.overlay"},{"translate":"baba.door.row8","color":"#E5533B"}]'
execute if entity @s[nbt={data:{sprite:"flower"}}] run data modify storage baba:main text append value '[{"translate":"baba.overlay"},{"translate":"baba.flower.row8","color":"#9183D7"}]'
execute if entity @s[nbt={data:{sprite:"pillar"}}] run data modify storage baba:main text append value '[{"translate":"baba.overlay"},{"translate":"baba.pillar.row8","color":"#737373"}]'
execute if entity @s[nbt={data:{sprite:"rock"}}] run data modify storage baba:main text append value '[{"translate":"baba.overlay"},{"translate":"baba.rock.row8","color":"#C29E46"}]'
execute if entity @s[nbt={data:{sprite:"tile"}}] run data modify storage baba:main text append value '[{"translate":"baba.overlay"},{"translate":"baba.tile.row8","color":"#242424"}]'
execute if entity @s[nbt={data:{sprite:"moon"}}] run data modify storage baba:main text append value '[{"translate":"baba.overlay"},{"translate":"baba.moon.row8","color":"#EDE285"}]'
execute if entity @s[nbt={data:{sprite:"star"}}] run data modify storage baba:main text append value '[{"translate":"baba.overlay"},{"translate":"baba.star.row8","color":"#EDE285"}]'
execute if entity @s[nbt={data:{sprite:"tree"}}] run data modify storage baba:main text append value '[{"translate":"baba.overlay"},{"translate":"baba.tree.row8","color":"#5C8339"}]'
execute if entity @s[nbt={data:{sprite:"box"}}] run data modify storage baba:main text append value '[{"translate":"baba.overlay"},{"translate":"baba.box.row8"}]'
execute if entity @s[nbt={data:{sprite:"fire"}}] run data modify storage baba:main text append value '[{"translate":"baba.overlay"},{"translate":"baba.fire.row8","color":"#421910"}]'
execute if entity @s[nbt={data:{sprite:"jelly"}}] run data modify storage baba:main text append value '[{"translate":"baba.overlay"},{"translate":"baba.jelly.row8","color":"#5F9DD1"}]'
execute if entity @s[nbt={data:{sprite:"cloud"}}] run function baba:display/check_tile/row8/cloud
execute if entity @s[nbt={data:{sprite:"fence"}}] run function baba:display/check_tile/row8/fence
execute if entity @s[nbt={data:{sprite:"grass"}}] run function baba:display/check_tile/row8/grass
execute if entity @s[nbt={data:{sprite:"hedge"}}] run function baba:display/check_tile/row8/hedge
execute if entity @s[nbt={data:{sprite:"ice"}}] run function baba:display/check_tile/row8/ice
execute if entity @s[nbt={data:{sprite:"lava"}}] run function baba:display/check_tile/row8/lava
execute if entity @s[nbt={data:{sprite:"pipe"}}] run function baba:display/check_tile/row8/pipe
execute if entity @s[nbt={data:{sprite:"rubble"}}] run function baba:display/check_tile/row8/rubble
execute if entity @s[nbt={data:{sprite:"wall"}}] run function baba:display/check_tile/row8/wall
execute if entity @s[nbt={data:{sprite:"water"}}] run function baba:display/check_tile/row8/water
