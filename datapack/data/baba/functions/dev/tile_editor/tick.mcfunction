execute as @e[type=marker,tag=tile_editor] at @s align xyz if block ~ ~-1 ~ chiseled_bookshelf run function baba:dev/tile_editor/setup
kill @e[type=marker,tag=tile_editor]
execute as @e[type=interaction,tag=tile_color] at @s on target run function baba:dev/tile_editor/color
execute as @e[type=interaction,tag=tile_color] at @s on attacker run function baba:dev/tile_editor/color
execute as @e[type=interaction,tag=tile_number] at @s on target run function baba:dev/tile_editor/number
execute as @e[type=interaction,tag=tile_number] at @s on attacker run function baba:dev/tile_editor/number
execute as @e[type=interaction,tag=tile_link] at @s on target run function baba:dev/tile_editor/link
execute as @e[type=interaction,tag=tile_link] at @s on attacker run function baba:dev/tile_editor/link
execute as @e[type=interaction,tag=tile_editor] run data remove entity @s attack
execute as @e[type=interaction,tag=tile_editor] run data remove entity @s interaction

execute as @a[tag=edit_color] at @s as @e[type=item,distance=..3,nbt={Item:{tag:{color:1b}}},limit=1] run function baba:dev/tile_editor/change_color
execute as @a[tag=edit_number] at @s as @e[type=item,distance=..3,nbt={Item:{tag:{number:1b}}},limit=1] run function baba:dev/tile_editor/change_number

execute at @e[tag=tile_editor] unless entity @a[distance=..5,limit=1] run kill @e[tag=tile_editor,distance=..5]
