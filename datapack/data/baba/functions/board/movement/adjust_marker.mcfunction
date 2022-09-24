execute if entity @s[tag=baba.move] if data block ^ ^ ^1 RecordItem.tag.tiles[{properties:["move"]}] run tp @s ^ ^ ^1
execute if entity @s[tag=baba.move] if data block ~ ~ ~ RecordItem.tag.tiles[{properties:["move"]}] run summon marker ~ ~ ~ {Tags:["baba.move","baba.move_marker"]}
execute if entity @s[tag=baba.shift] if data block ^ ^ ^1 RecordItem.tag.tiles[{properties:["shift"]}] run tp @s ^ ^ ^1
execute if entity @s[tag=baba.shift] if data block ~ ~ ~ RecordItem.tag.tiles[{properties:["shift"]}] run summon marker ~ ~ ~ {Tags:["baba.shift","baba.shift_marker"]}
