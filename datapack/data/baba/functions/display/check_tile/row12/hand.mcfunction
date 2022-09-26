execute if entity @s[nbt={data:{sprite:"hand",facing:4}}] run data modify storage baba:main text append value '[{"translate":"baba.overlay"},{"translate":"baba.hand.facing-right.row12"}]'
execute if entity @s[nbt={data:{sprite:"hand",facing:1}}] run data modify storage baba:main text append value '[{"translate":"baba.overlay"},{"translate":"baba.hand.facing-up.row12"}]'
execute if entity @s[nbt={data:{sprite:"hand",facing:3}}] run data modify storage baba:main text append value '[{"translate":"baba.overlay"},{"translate":"baba.hand.facing-left.row12"}]'
execute if entity @s[nbt={data:{sprite:"hand",facing:2}}] run data modify storage baba:main text append value '[{"translate":"baba.overlay"},{"translate":"baba.hand.facing-down.row12"}]'
