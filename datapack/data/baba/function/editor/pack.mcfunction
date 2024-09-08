# packs bookshelves into storage
data modify storage baba:main level set value {tiles:[],metadata:{}}
data modify storage baba:main level.metadata set from block ~-1 ~-1 ~2 item.components."minecraft:custom_data".baba
execute if block ~-1 ~-1 ~1 #signs run data modify storage baba:main level.metadata.name set from block ~-1 ~-1 ~1 front_text.messages[0]
execute if block ~-1 ~-1 ~1 #signs run data modify storage baba:main level.metadata.palette set from block ~-1 ~-1 ~1 front_text.messages[1]
execute if block ~-1 ~-1 ~1 #signs run data modify storage baba:main level.metadata.palette set string storage baba:main level.metadata.palette 1 -1
function baba:editor/pack/grid
