data modify storage baba:main tile set from storage baba:main tiles[0]
execute if data storage baba:main tile{sprite:"text"} run function baba:text/check_tile/row17/text
execute if data storage baba:main tile{sprite:"belt"} run function baba:text/check_tile/row17/belt
execute if data storage baba:main tile{sprite:"bug"} run function baba:text/check_tile/row17/bug
execute if data storage baba:main tile{sprite:"crab"} run function baba:text/check_tile/row17/crab
execute if data storage baba:main tile{sprite:"rocket"} run function baba:text/check_tile/row17/rocket
execute if data storage baba:main tile{sprite:"skull"} run function baba:text/check_tile/row17/skull
execute if data storage baba:main tile{sprite:"ghost"} run function baba:text/check_tile/row17/ghost
execute if data storage baba:main tile{sprite:"statue"} run function baba:text/check_tile/row17/statue
execute if data storage baba:main tile{sprite:"bat"} run function baba:text/check_tile/row17/bat
execute if data storage baba:main tile{sprite:"cog"} run function baba:text/check_tile/row17/cog
execute if data storage baba:main tile{sprite:"baba"} run function baba:text/check_tile/row17/baba
execute if data storage baba:main tile{sprite:"keke"} run function baba:text/check_tile/row17/keke
execute if data storage baba:main tile{sprite:"me"} run function baba:text/check_tile/row17/me
execute if data storage baba:main tile{sprite:"robot"} run function baba:text/check_tile/row17/robot
execute if data storage baba:main tile{sprite:"algae"} run data modify storage baba:main text append value '[{"translate":"baba.overlay"},{"translate":"baba.algae.row17","color":"#5C8339"}]'
execute if data storage baba:main tile{sprite:"flag"} run data modify storage baba:main text append value '[{"translate":"baba.overlay"},{"translate":"baba.flag.row17","color":"#EDE285"}]'
execute if data storage baba:main tile{sprite:"key"} run data modify storage baba:main text append value '[{"translate":"baba.overlay"},{"translate":"baba.key.row17"}]'
execute if data storage baba:main tile{sprite:"love"} run data modify storage baba:main text append value '[{"translate":"baba.overlay"},{"translate":"baba.love.row17"}]'
execute if data storage baba:main tile{sprite:"ufo"} run data modify storage baba:main text append value '[{"translate":"baba.overlay"},{"translate":"baba.ufo.row17"}]'
execute if data storage baba:main tile{sprite:"door"} run data modify storage baba:main text append value '[{"translate":"baba.overlay"},{"translate":"baba.door.row17"}]'
execute if data storage baba:main tile{sprite:"flower"} run data modify storage baba:main text append value '[{"translate":"baba.overlay"},{"translate":"baba.flower.row17"}]'
execute if data storage baba:main tile{sprite:"pillar"} run data modify storage baba:main text append value '[{"translate":"baba.overlay"},{"translate":"baba.pillar.row17"}]'
execute if data storage baba:main tile{sprite:"rock"} run data modify storage baba:main text append value '[{"translate":"baba.overlay"},{"translate":"baba.rock.row17","color":"#C29E46"}]'
execute if data storage baba:main tile{sprite:"tile"} run data modify storage baba:main text append value '[{"translate":"baba.overlay"},{"translate":"baba.tile.row17","color":"#242424"}]'
execute if data storage baba:main tile{sprite:"moon"} run data modify storage baba:main text append value '[{"translate":"baba.overlay"},{"translate":"baba.moon.row17"}]'
execute if data storage baba:main tile{sprite:"star"} run data modify storage baba:main text append value '[{"translate":"baba.overlay"},{"translate":"baba.star.row17"}]'
execute if data storage baba:main tile{sprite:"tree"} run data modify storage baba:main text append value '[{"translate":"baba.overlay"},{"translate":"baba.tree.row17"}]'
execute if data storage baba:main tile{sprite:"box"} run data modify storage baba:main text append value '[{"translate":"baba.overlay"},{"translate":"baba.box.row17"}]'
execute if data storage baba:main tile{sprite:"fire"} run data modify storage baba:main text append value '[{"translate":"baba.overlay"},{"translate":"baba.fire.row17"}]'
execute if data storage baba:main tile{sprite:"jelly"} run data modify storage baba:main text append value '[{"translate":"baba.overlay"},{"translate":"baba.jelly.row17"}]'
execute if data storage baba:main tile{sprite:"cloud"} run function baba:text/check_tile/row17/cloud
execute if data storage baba:main tile{sprite:"fence"} run function baba:text/check_tile/row17/fence
execute if data storage baba:main tile{sprite:"grass"} run function baba:text/check_tile/row17/grass
execute if data storage baba:main tile{sprite:"hedge"} run function baba:text/check_tile/row17/hedge
execute if data storage baba:main tile{sprite:"ice"} run function baba:text/check_tile/row17/ice
execute if data storage baba:main tile{sprite:"lava"} run function baba:text/check_tile/row17/lava
execute if data storage baba:main tile{sprite:"pipe"} run function baba:text/check_tile/row17/pipe
execute if data storage baba:main tile{sprite:"rubble"} run function baba:text/check_tile/row17/rubble
execute if data storage baba:main tile{sprite:"wall"} run function baba:text/check_tile/row17/wall
execute if data storage baba:main tile{sprite:"water"} run function baba:text/check_tile/row17/water
data remove storage baba:main tiles[0]
execute if data storage baba:main tiles[0] run function baba:text/check_tile/row17_loop
