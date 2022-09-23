execute rotated 270 0 if block ^ ^ ^1 jukebox if data block ~ ~ ~ RecordItem.tag.tiles[{properties:["move"],facing:1,moved:0b}] run data modify block ~ ~ ~ RecordItem.tag.tiles[{properties:["move"],facing:1,moved:0b}].moving set value 1b
tag @s remove move_success
execute rotated 270 0 if block ^ ^ ^1 jukebox if data block ~ ~ ~ RecordItem.tag.tiles[{moving:1b}] run function baba:board/movement/try_move
tag @s[tag=move_success] add moved
execute if entity @s[tag=!move_success] if data block ~ ~ ~ RecordItem.tag.tiles[{properties:["move"],facing:1}] run data modify block ~ ~ ~ RecordItem.tag.tiles[{properties:["move"],facing:1}].facing set value 5
execute rotated 90 0 if block ^ ^ ^1 jukebox if data block ~ ~ ~ RecordItem.tag.tiles[{properties:["move"],facing:2,moved:0b}] run data modify block ~ ~ ~ RecordItem.tag.tiles[{properties:["move"],facing:2,moved:0b}].moving set value 1b
tag @s remove move_success
execute rotated 90 0 if block ^ ^ ^1 jukebox if data block ~ ~ ~ RecordItem.tag.tiles[{moving:1b}] run function baba:board/movement/try_move
tag @s[tag=move_success] add moved
execute if entity @s[tag=!move_success] if data block ~ ~ ~ RecordItem.tag.tiles[{properties:["move"],facing:2}] run data modify block ~ ~ ~ RecordItem.tag.tiles[{properties:["move"],facing:2}].facing set value 1
execute rotated 180 0 if block ^ ^ ^1 jukebox if data block ~ ~ ~ RecordItem.tag.tiles[{properties:["move"],facing:3,moved:0b}] run data modify block ~ ~ ~ RecordItem.tag.tiles[{properties:["move"],facing:3,moved:0b}].moving set value 1b
tag @s remove move_success
execute rotated 180 0 if block ^ ^ ^1 jukebox if data block ~ ~ ~ RecordItem.tag.tiles[{moving:1b}] run function baba:board/movement/try_move
tag @s[tag=move_success] add moved
execute if entity @s[tag=!move_success] if data block ~ ~ ~ RecordItem.tag.tiles[{properties:["move"],facing:3}] run data modify block ~ ~ ~ RecordItem.tag.tiles[{properties:["move"],facing:3}].facing set value 6
execute rotated 0 0 if block ^ ^ ^1 jukebox if data block ~ ~ ~ RecordItem.tag.tiles[{properties:["move"],facing:4,moved:0b}] run data modify block ~ ~ ~ RecordItem.tag.tiles[{properties:["move"],facing:4,moved:0b}].moving set value 1b
tag @s remove move_success
execute rotated 0 0 if block ^ ^ ^1 jukebox if data block ~ ~ ~ RecordItem.tag.tiles[{moving:1b}] run function baba:board/movement/try_move
tag @s[tag=move_success] add moved
execute if entity @s[tag=!move_success] if data block ~ ~ ~ RecordItem.tag.tiles[{properties:["move"],facing:4}] run data modify block ~ ~ ~ RecordItem.tag.tiles[{properties:["move"],facing:4}].facing set value 3
execute if data block ~ ~ ~ RecordItem.tag.tiles[{properties:["move"],facing:5}] run data modify block ~ ~ ~ RecordItem.tag.tiles[{properties:["move"],facing:5}].facing set value 2
execute if data block ~ ~ ~ RecordItem.tag.tiles[{properties:["move"],facing:6}] run data modify block ~ ~ ~ RecordItem.tag.tiles[{properties:["move"],facing:6}].facing set value 4
tag @s[tag=moved] add move_success
