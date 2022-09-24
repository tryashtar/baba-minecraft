data modify block ~ ~ ~ RecordItem.tag.tiles[{properties:["move"],facing:1,moved:0b}].moving set value 1b
tag @s remove move_success
execute if block ^ ^ ^1 jukebox if data block ~ ~ ~ RecordItem.tag.tiles[{moving:1b}] run function baba:board/movement/try_move
tag @s[tag=move_success] add moved
execute if entity @s[tag=!move_success] run data modify block ~ ~ ~ RecordItem.tag.tiles[{properties:["move"],facing:1}].facing set value 2
execute if block ^ ^ ^1 jukebox if entity @s[tag=!move_success] run function baba:board/movement/try_move
tag @s[tag=move_success] add moved
