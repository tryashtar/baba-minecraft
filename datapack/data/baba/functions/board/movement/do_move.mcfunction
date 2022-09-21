execute if score direction baba matches 0 run data modify block ~ ~ ~ RecordItem.tag.tiles[{moving:1b}].facing set value "down"
execute if score direction baba matches 1 run data modify block ~ ~ ~ RecordItem.tag.tiles[{moving:1b}].facing set value "left"
execute if score direction baba matches 2 run data modify block ~ ~ ~ RecordItem.tag.tiles[{moving:1b}].facing set value "right"
execute if score direction baba matches 3 run data modify block ~ ~ ~ RecordItem.tag.tiles[{moving:1b}].facing set value "up"
execute if score direction baba matches 3 run data modify block ~ ~ ~ RecordItem.tag.tiles[{moving:1b}].facing set value "up"
execute if data block ~ ~ ~ RecordItem.tag.tiles[].frame run data modify block ~ ~ ~ RecordItem.tag.tiles[{moving:1b,frame:3}].frame set value 4
execute if data block ~ ~ ~ RecordItem.tag.tiles[].frame run data modify block ~ ~ ~ RecordItem.tag.tiles[{moving:1b,frame:2}].frame set value 3
execute if data block ~ ~ ~ RecordItem.tag.tiles[].frame run data modify block ~ ~ ~ RecordItem.tag.tiles[{moving:1b,frame:1}].frame set value 2
execute if data block ~ ~ ~ RecordItem.tag.tiles[].frame run data modify block ~ ~ ~ RecordItem.tag.tiles[{moving:1b,frame:0}].frame set value 1
execute if data block ~ ~ ~ RecordItem.tag.tiles[].frame run data modify block ~ ~ ~ RecordItem.tag.tiles[{moving:1b,frame:4}].frame set value 0
scoreboard players set move_success baba 1
data modify block ^ ^ ^1 RecordItem.tag.tiles append from block ~ ~ ~ RecordItem.tag.tiles[{moving:1b}]
data remove block ^ ^ ^1 RecordItem.tag.tiles[{moving:1b}].moving
data remove block ~ ~ ~ RecordItem.tag.tiles[{moving:1b}]
data modify block ^ ^ ^1 RecordItem.tag.tick set from storage baba:main tick
