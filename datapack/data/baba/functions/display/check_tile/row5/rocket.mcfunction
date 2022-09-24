execute if entity @s[nbt={data:{sprite:"rocket",facing:4}}] run data modify storage baba:main text append value '[{"translate":"baba.overlay"},{"translate":"baba.rocket.facing-right.row5"}]'
execute if entity @s[nbt={data:{sprite:"rocket",facing:1}}] run data modify storage baba:main text append value '[{"translate":"baba.overlay"},{"translate":"baba.rocket.facing-up.row5"}]'
execute if entity @s[nbt={data:{sprite:"rocket",facing:3}}] run data modify storage baba:main text append value '[{"translate":"baba.overlay"},{"translate":"baba.rocket.facing-left.row5"}]'
execute if entity @s[nbt={data:{sprite:"rocket",facing:2}}] run data modify storage baba:main text append value '[{"translate":"baba.overlay"},{"translate":"baba.rocket.facing-down.row5"}]'
