execute if entity @s[nbt={data:{sprite:"crab",facing:4}}] run data modify storage baba:main text append value '[{"translate":"baba.overlay"},{"translate":"baba.crab.facing-right.row19","color":"#82261C"}]'
execute if entity @s[nbt={data:{sprite:"crab",facing:1}}] run data modify storage baba:main text append value '[{"translate":"baba.overlay"},{"translate":"baba.crab.facing-up.row19","color":"#82261C"}]'
execute if entity @s[nbt={data:{sprite:"crab",facing:3}}] run data modify storage baba:main text append value '[{"translate":"baba.overlay"},{"translate":"baba.crab.facing-left.row19","color":"#82261C"}]'
execute if entity @s[nbt={data:{sprite:"crab",facing:2}}] run data modify storage baba:main text append value '[{"translate":"baba.overlay"},{"translate":"baba.crab.facing-down.row19","color":"#82261C"}]'