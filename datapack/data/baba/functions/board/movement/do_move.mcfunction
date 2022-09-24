execute if data block ~ ~ ~ RecordItem.tag.tiles[{moving:1b,walk:3}] run data modify block ~ ~ ~ RecordItem.tag.tiles[{moving:1b,walk:3}].walk set value 4
execute if data block ~ ~ ~ RecordItem.tag.tiles[{moving:1b,walk:2}] run data modify block ~ ~ ~ RecordItem.tag.tiles[{moving:1b,walk:2}].walk set value 3
execute if data block ~ ~ ~ RecordItem.tag.tiles[{moving:1b,walk:1}] run data modify block ~ ~ ~ RecordItem.tag.tiles[{moving:1b,walk:1}].walk set value 2
execute if data block ~ ~ ~ RecordItem.tag.tiles[{moving:1b,walk:0}] run data modify block ~ ~ ~ RecordItem.tag.tiles[{moving:1b,walk:0}].walk set value 1
execute if data block ~ ~ ~ RecordItem.tag.tiles[{moving:1b,walk:4}] run data modify block ~ ~ ~ RecordItem.tag.tiles[{moving:1b,walk:4}].walk set value 0
data modify block ~ ~ ~ RecordItem.tag.tiles[{moving:1b}].moved set value 1b
data modify block ^ ^ ^1 RecordItem.tag.tiles append from block ~ ~ ~ RecordItem.tag.tiles[{moving:1b}]
data remove block ^ ^ ^1 RecordItem.tag.tiles[].moving
data remove block ~ ~ ~ RecordItem.tag.tiles[{moving:1b}]
execute as @e[type=marker,tag=baba.move_marker,distance=..0.1] positioned as @s run function baba:board/movement/adjust_marker
