execute if block ~ ~ ~ #baba:editor_blocks[facing=north] run function baba:editor/pack/block/north
execute if block ~ ~ ~ #baba:editor_blocks[facing=south] run function baba:editor/pack/block/south
execute if block ~ ~ ~ #baba:editor_blocks[facing=east] run function baba:editor/pack/block/east
execute if block ~ ~ ~ #baba:editor_blocks[facing=west] run function baba:editor/pack/block/west
data modify storage baba:main tile[-1].extra set from block ~ ~ ~ Items[0].components."minecraft:custom_data".baba.extra
data modify storage baba:main tile[-1].extra set from block ~ ~ ~ bees[0].entity_data.extra
execute positioned ~ ~1 ~ if block ~ ~ ~ #baba:editor_blocks run function baba:editor/pack/block
