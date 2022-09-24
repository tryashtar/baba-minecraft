data modify storage baba:main tile set from storage baba:main tiles[0]
execute if data storage baba:main tile{sprite:"text"} run function baba:text/check_tile/row2/text
execute if data storage baba:main tile{sprite:"belt"} run function baba:text/check_tile/row2/belt
execute if data storage baba:main tile{sprite:"bug"} run function baba:text/check_tile/row2/bug
execute if data storage baba:main tile{sprite:"crab"} run function baba:text/check_tile/row2/crab
execute if data storage baba:main tile{sprite:"rocket"} run function baba:text/check_tile/row2/rocket
execute if data storage baba:main tile{sprite:"skull"} run function baba:text/check_tile/row2/skull
execute if data storage baba:main tile{sprite:"ghost"} run function baba:text/check_tile/row2/ghost
execute if data storage baba:main tile{sprite:"statue"} run function baba:text/check_tile/row2/statue
execute if data storage baba:main tile{sprite:"bat"} run function baba:text/check_tile/row2/bat
execute if data storage baba:main tile{sprite:"cog"} run function baba:text/check_tile/row2/cog
execute if data storage baba:main tile{sprite:"baba"} run function baba:text/check_tile/row2/baba
execute if data storage baba:main tile{sprite:"keke"} run function baba:text/check_tile/row2/keke
execute if data storage baba:main tile{sprite:"me"} run function baba:text/check_tile/row2/me
execute if data storage baba:main tile{sprite:"robot"} run function baba:text/check_tile/row2/robot
execute if data storage baba:main tile{sprite:"algae"} run data modify storage baba:main text append value '[{"translate":"baba.overlay"},{"translate":"baba.algae.row2","color":"#5C8339"}]'
execute if data storage baba:main tile{sprite:"flag"} run data modify storage baba:main text append value '[{"translate":"baba.overlay"},{"translate":"baba.flag.row2","color":"#EDE285"}]'
execute if data storage baba:main tile{sprite:"key"} run data modify storage baba:main text append value '[{"translate":"baba.overlay"},{"translate":"baba.key.row2"}]'
execute if data storage baba:main tile{sprite:"love"} run data modify storage baba:main text append value '[{"translate":"baba.overlay"},{"translate":"baba.love.row2"}]'
execute if data storage baba:main tile{sprite:"ufo"} run data modify storage baba:main text append value '[{"translate":"baba.overlay"},{"translate":"baba.ufo.row2"}]'
execute if data storage baba:main tile{sprite:"door"} run data modify storage baba:main text append value '[{"translate":"baba.overlay"},{"translate":"baba.door.row2"}]'
execute if data storage baba:main tile{sprite:"flower"} run data modify storage baba:main text append value '[{"translate":"baba.overlay"},{"translate":"baba.flower.row2"}]'
execute if data storage baba:main tile{sprite:"pillar"} run data modify storage baba:main text append value '[{"translate":"baba.overlay"},{"translate":"baba.pillar.row2"}]'
execute if data storage baba:main tile{sprite:"rock"} run data modify storage baba:main text append value '[{"translate":"baba.overlay"},{"translate":"baba.rock.row2","color":"#C29E46"}]'
execute if data storage baba:main tile{sprite:"tile"} run data modify storage baba:main text append value '[{"translate":"baba.overlay"},{"translate":"baba.tile.row2","color":"#242424"}]'
execute if data storage baba:main tile{sprite:"moon"} run data modify storage baba:main text append value '[{"translate":"baba.overlay"},{"translate":"baba.moon.row2"}]'
execute if data storage baba:main tile{sprite:"star"} run data modify storage baba:main text append value '[{"translate":"baba.overlay"},{"translate":"baba.star.row2"}]'
execute if data storage baba:main tile{sprite:"tree"} run data modify storage baba:main text append value '[{"translate":"baba.overlay"},{"translate":"baba.tree.row2"}]'
execute if data storage baba:main tile{sprite:"box"} run data modify storage baba:main text append value '[{"translate":"baba.overlay"},{"translate":"baba.box.row2"}]'
execute if data storage baba:main tile{sprite:"fire"} run data modify storage baba:main text append value '[{"translate":"baba.overlay"},{"translate":"baba.fire.row2"}]'
execute if data storage baba:main tile{sprite:"jelly"} run data modify storage baba:main text append value '[{"translate":"baba.overlay"},{"translate":"baba.jelly.row2"}]'
execute if data storage baba:main tile{sprite:"cloud"} run function baba:text/check_tile/row2/cloud
execute if data storage baba:main tile{sprite:"fence"} run function baba:text/check_tile/row2/fence
execute if data storage baba:main tile{sprite:"grass"} run function baba:text/check_tile/row2/grass
execute if data storage baba:main tile{sprite:"hedge"} run function baba:text/check_tile/row2/hedge
execute if data storage baba:main tile{sprite:"ice"} run function baba:text/check_tile/row2/ice
execute if data storage baba:main tile{sprite:"lava"} run function baba:text/check_tile/row2/lava
execute if data storage baba:main tile{sprite:"pipe"} run function baba:text/check_tile/row2/pipe
execute if data storage baba:main tile{sprite:"rubble"} run function baba:text/check_tile/row2/rubble
execute if data storage baba:main tile{sprite:"wall"} run function baba:text/check_tile/row2/wall
execute if data storage baba:main tile{sprite:"water"} run function baba:text/check_tile/row2/water
data remove storage baba:main tiles[0]
execute if data storage baba:main tiles[0] run function baba:text/check_tile/row2_loop
