# packs bookshelves into jukebox
data modify storage baba:main level set value {tiles:[],metadata:{}}
data modify storage baba:main level.metadata set from block ~ ~-2 ~ RecordItem.components."minecraft:custom_data".baba
execute if block ~-1 ~-2 ~ #signs run data modify storage baba:main level.metadata.name set from block ~-1 ~-2 ~ front_text.messages[0]
function baba:editor/pack/grid
