# packs bookshelves into storage
data modify storage baba:main level set value {tiles:[],metadata:{}}
data modify storage baba:main level.metadata set from block ~-1 ~-1 ~1 RecordItem.components."minecraft:custom_data".baba
execute if block ~-1 ~-1 ~ #signs run data modify storage baba:main level.metadata.name set from block ~-1 ~-1 ~ front_text.messages[0]
function baba:editor/pack/grid
