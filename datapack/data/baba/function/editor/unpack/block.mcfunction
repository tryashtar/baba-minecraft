data modify storage baba:main tile set from storage baba:main level.tiles[0][0][0]
function baba:editor/unpack/block.macro with storage baba:main tile.scores
# would prefer to use item replace and item modify here, but both change the block state of the bookshelf
execute if data storage baba:main tile.extra run data modify block ~ ~ ~ Items set value [{id:"disc_fragment_5",count:1}]
execute if data storage baba:main tile.extra run data modify block ~ ~ ~ bees set value [{entity_data:{},ticks_in_hive:0,min_ticks_in_hive:0}]
execute if data storage baba:main tile.extra run data modify block ~ ~ ~ Items[0].components."minecraft:custom_data".baba.extra set from storage baba:main tile.extra
execute if data storage baba:main tile.extra run data modify block ~ ~ ~ bees[0].entity_data.extra set from storage baba:main tile.extra
data remove storage baba:main level.tiles[0][0][0]
execute if data storage baba:main level.tiles[0][0][0] positioned ~ ~1 ~ run function baba:editor/unpack/block
