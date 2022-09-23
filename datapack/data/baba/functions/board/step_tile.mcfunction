execute if data block ~ ~ ~ RecordItem.tag.tiles[{properties:["you"]}] run function baba:board/movement/prepass/you
execute if data block ~ ~ ~ RecordItem.tag.tiles[{properties:["move"]}] run function baba:board/movement/prepass/move
execute if data block ~ ~ ~ RecordItem.tag.tiles[{properties:["shift"]}] run function baba:board/movement/prepass/shift

execute if data block ~ ~ ~ RecordItem.tag.tiles[{sprite:"cloud"}] run function baba:board/graphics/cloud
execute if data block ~ ~ ~ RecordItem.tag.tiles[{sprite:"fence"}] run function baba:board/graphics/fence
execute if data block ~ ~ ~ RecordItem.tag.tiles[{sprite:"grass"}] run function baba:board/graphics/grass
execute if data block ~ ~ ~ RecordItem.tag.tiles[{sprite:"hedge"}] run function baba:board/graphics/hedge
execute if data block ~ ~ ~ RecordItem.tag.tiles[{sprite:"ice"}] run function baba:board/graphics/ice
execute if data block ~ ~ ~ RecordItem.tag.tiles[{sprite:"lava"}] run function baba:board/graphics/lava
execute if data block ~ ~ ~ RecordItem.tag.tiles[{sprite:"pipe"}] run function baba:board/graphics/pipe
execute if data block ~ ~ ~ RecordItem.tag.tiles[{sprite:"rubble"}] run function baba:board/graphics/rubble
execute if data block ~ ~ ~ RecordItem.tag.tiles[{sprite:"wall"}] run function baba:board/graphics/wall
execute if data block ~ ~ ~ RecordItem.tag.tiles[{sprite:"water"}] run function baba:board/graphics/water
execute if data block ~ ~ ~ RecordItem.tag.tiles[{properties:["sink"]}] if data block ~ ~ ~ RecordItem.tag.tiles[1] run data modify block ~ ~ ~ RecordItem.tag.tiles set value []
execute if data block ~ ~ ~ RecordItem.tag.tiles[{properties:["defeat"]}] run data remove block ~ ~ ~ RecordItem.tag.tiles[{properties:["you"]}]
execute if data block ~ ~ ~ RecordItem.tag.tiles[{properties:["hot"]}] run data remove block ~ ~ ~ RecordItem.tag.tiles[{properties:["melt"]}]
