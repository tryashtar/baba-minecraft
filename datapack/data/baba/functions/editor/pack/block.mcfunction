execute if block ~ ~ ~ chiseled_bookshelf[facing=north] run function baba:editor/pack/block/north
execute if block ~ ~ ~ chiseled_bookshelf[facing=south] run function baba:editor/pack/block/south
execute if block ~ ~ ~ chiseled_bookshelf[facing=east] run function baba:editor/pack/block/east
execute if block ~ ~ ~ chiseled_bookshelf[facing=west] run function baba:editor/pack/block/west
data modify storage baba:main tile[-1].extra set from block ~ ~ ~ Items[0].tag.extra
execute positioned ~ ~1 ~ if block ~ ~ ~ chiseled_bookshelf run function baba:editor/pack/block
