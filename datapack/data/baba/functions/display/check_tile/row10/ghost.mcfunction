execute if entity @s[nbt={data:{sprite:"ghost",facing:4}}] run data modify storage baba:main text append value '[{"translate":"baba.overlay"},{"translate":"baba.ghost.facing-right.row10","color":"#EB91CA"}]'
execute if entity @s[nbt={data:{sprite:"ghost",facing:1}}] run data modify storage baba:main text append value '[{"translate":"baba.overlay"},{"translate":"baba.ghost.facing-up.row10","color":"#EB91CA"}]'
execute if entity @s[nbt={data:{sprite:"ghost",facing:3}}] run data modify storage baba:main text append value '[{"translate":"baba.overlay"},{"translate":"baba.ghost.facing-left.row10","color":"#EB91CA"}]'
execute if entity @s[nbt={data:{sprite:"ghost",facing:2}}] run data modify storage baba:main text append value '[{"translate":"baba.overlay"},{"translate":"baba.ghost.facing-down.row10","color":"#EB91CA"}]'
