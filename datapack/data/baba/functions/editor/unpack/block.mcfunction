data modify storage baba:main tile set from storage baba:main level.tiles[0][0][0]
function baba:editor/unpack/block.macro with storage baba:main tile.scores
execute if data storage baba:main tile.extra run data modify block ~ ~ ~ Items set value [{id:"book"}]
execute if data storage baba:main tile.extra run data modify block ~ ~ ~ Bees set value [{EntityData:{}}]
execute if data storage baba:main tile.extra run data modify block ~ ~ ~ Items[0].tag.extra set from storage baba:main tile.extra
execute if data storage baba:main tile.extra run data modify block ~ ~ ~ Bees[0].EntityData.extra set from storage baba:main tile.extra
data remove storage baba:main level.tiles[0][0][0]
execute if data storage baba:main level.tiles[0][0][0] positioned ~ ~1 ~ run function baba:editor/unpack/block
