execute as @e[type=marker,tag=spawn_tile_editor] at @s align xyz if block ~ ~-1 ~ #baba:editor_blocks run function baba:dev/tile_editor/open
kill @e[type=marker,tag=spawn_tile_editor]

execute as @e[type=interaction,tag=tile_editor_menu] at @s run function baba:dev/tile_editor/tick_interaction
execute at @e[type=item_display,tag=baba.object,tag=tile_editor_preview] unless entity @a[distance=..10,limit=1] run function baba:dev/tile_editor/close

execute as @e[type=marker,tag=spawn_copier] at @s if block ~ ~-1 ~ #baba:editor_blocks run function baba:dev/copy_tile
