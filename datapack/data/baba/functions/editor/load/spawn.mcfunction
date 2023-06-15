data modify storage baba:main level.tiles[0][0][0].tags append from storage baba:main level.tiles[0][0][0].extra.tags[]
data remove storage baba:main level.tiles[0][0][0].extra.tags
data modify storage baba:main level.tiles[0][0][0] merge from storage baba:main level.tiles[0][0][0].extra
execute summon item_display run function baba:editor/load/spawn_init
data remove storage baba:main level.tiles[0][0][0]
execute if data storage baba:main level.tiles[0][0][0] run function baba:editor/load/spawn
