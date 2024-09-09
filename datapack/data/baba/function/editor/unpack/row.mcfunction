execute if data storage baba:main level.tiles[0][0] run function baba:editor/unpack/tile
data remove storage baba:main level.tiles[0]
execute unless data storage baba:main level.tiles[0] positioned ^ ^1 ^-1 if block ~ ~ ~ #baba:editor_floor run function baba:editor/unpack/wipe
execute if data storage baba:main level.tiles[0] positioned ^ ^1 ^ run function baba:editor/unpack/row
