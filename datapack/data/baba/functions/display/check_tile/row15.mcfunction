execute store result score column baba run data get entity @s Pos[2]
execute if score column baba > last_column baba run function baba:display/add_empty
execute store result score last_column baba run data get entity @s Pos[2]
execute if entity @s[nbt={data:{sprite:"text"}}] run function baba:display/check_tile/row15/text
execute if entity @s[nbt={data:{sprite:"belt"}}] run function baba:display/check_tile/row15/belt
execute if entity @s[nbt={data:{sprite:"bug"}}] run function baba:display/check_tile/row15/bug
execute if entity @s[nbt={data:{sprite:"crab"}}] run function baba:display/check_tile/row15/crab
execute if entity @s[nbt={data:{sprite:"rocket"}}] run function baba:display/check_tile/row15/rocket
execute if entity @s[nbt={data:{sprite:"skull"}}] run function baba:display/check_tile/row15/skull
execute if entity @s[nbt={data:{sprite:"ghost"}}] run function baba:display/check_tile/row15/ghost
execute if entity @s[nbt={data:{sprite:"statue"}}] run function baba:display/check_tile/row15/statue
execute if entity @s[nbt={data:{sprite:"bat"}}] run function baba:display/check_tile/row15/bat
execute if entity @s[nbt={data:{sprite:"cog"}}] run function baba:display/check_tile/row15/cog
execute if entity @s[nbt={data:{sprite:"baba"}}] run function baba:display/check_tile/row15/baba
execute if entity @s[nbt={data:{sprite:"keke"}}] run function baba:display/check_tile/row15/keke
execute if entity @s[nbt={data:{sprite:"me"}}] run function baba:display/check_tile/row15/me
execute if entity @s[nbt={data:{sprite:"robot"}}] run function baba:display/check_tile/row15/robot
execute if entity @s[nbt={data:{sprite:"algae"}}] run data modify storage baba:main text append value '[{"translate":"baba.overlay"},{"translate":"baba.algae.row15","color":"#5C8339"}]'
execute if entity @s[nbt={data:{sprite:"flag"}}] run data modify storage baba:main text append value '[{"translate":"baba.overlay"},{"translate":"baba.flag.row15","color":"#EDE285"}]'
execute if entity @s[nbt={data:{sprite:"key"}}] run data modify storage baba:main text append value '[{"translate":"baba.overlay"},{"translate":"baba.key.row15","color":"#EDE285"}]'
execute if entity @s[nbt={data:{sprite:"love"}}] run data modify storage baba:main text append value '[{"translate":"baba.overlay"},{"translate":"baba.love.row15","color":"#EB91CA"}]'
execute if entity @s[nbt={data:{sprite:"ufo"}}] run data modify storage baba:main text append value '[{"translate":"baba.overlay"},{"translate":"baba.ufo.row15","color":"#D9396A"}]'
execute if entity @s[nbt={data:{sprite:"door"}}] run data modify storage baba:main text append value '[{"translate":"baba.overlay"},{"translate":"baba.door.row15","color":"#E5533B"}]'
execute if entity @s[nbt={data:{sprite:"flower"}}] run data modify storage baba:main text append value '[{"translate":"baba.overlay"},{"translate":"baba.flower.row15","color":"#9183D7"}]'
execute if entity @s[nbt={data:{sprite:"pillar"}}] run data modify storage baba:main text append value '[{"translate":"baba.overlay"},{"translate":"baba.pillar.row15","color":"#737373"}]'
execute if entity @s[nbt={data:{sprite:"rock"}}] run data modify storage baba:main text append value '[{"translate":"baba.overlay"},{"translate":"baba.rock.row15","color":"#C29E46"}]'
execute if entity @s[nbt={data:{sprite:"tile"}}] run data modify storage baba:main text append value '[{"translate":"baba.overlay"},{"translate":"baba.tile.row15","color":"#242424"}]'
execute if entity @s[nbt={data:{sprite:"moon"}}] run data modify storage baba:main text append value '[{"translate":"baba.overlay"},{"translate":"baba.moon.row15","color":"#EDE285"}]'
execute if entity @s[nbt={data:{sprite:"star"}}] run data modify storage baba:main text append value '[{"translate":"baba.overlay"},{"translate":"baba.star.row15","color":"#EDE285"}]'
execute if entity @s[nbt={data:{sprite:"tree"}}] run data modify storage baba:main text append value '[{"translate":"baba.overlay"},{"translate":"baba.tree.row15","color":"#5C8339"}]'
execute if entity @s[nbt={data:{sprite:"box"}}] run data modify storage baba:main text append value '[{"translate":"baba.overlay"},{"translate":"baba.box.row15"}]'
execute if entity @s[nbt={data:{sprite:"fire"}}] run data modify storage baba:main text append value '[{"translate":"baba.overlay"},{"translate":"baba.fire.row15","color":"#421910"}]'
execute if entity @s[nbt={data:{sprite:"jelly"}}] run data modify storage baba:main text append value '[{"translate":"baba.overlay"},{"translate":"baba.jelly.row15","color":"#5F9DD1"}]'
execute if entity @s[nbt={data:{sprite:"cloud"}}] run function baba:display/check_tile/row15/cloud
execute if entity @s[nbt={data:{sprite:"fence"}}] run function baba:display/check_tile/row15/fence
execute if entity @s[nbt={data:{sprite:"grass"}}] run function baba:display/check_tile/row15/grass
execute if entity @s[nbt={data:{sprite:"hedge"}}] run function baba:display/check_tile/row15/hedge
execute if entity @s[nbt={data:{sprite:"ice"}}] run function baba:display/check_tile/row15/ice
execute if entity @s[nbt={data:{sprite:"lava"}}] run function baba:display/check_tile/row15/lava
execute if entity @s[nbt={data:{sprite:"pipe"}}] run function baba:display/check_tile/row15/pipe
execute if entity @s[nbt={data:{sprite:"rubble"}}] run function baba:display/check_tile/row15/rubble
execute if entity @s[nbt={data:{sprite:"wall"}}] run function baba:display/check_tile/row15/wall
execute if entity @s[nbt={data:{sprite:"water"}}] run function baba:display/check_tile/row15/water
