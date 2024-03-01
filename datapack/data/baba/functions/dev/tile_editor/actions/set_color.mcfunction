# change color
scoreboard players operation pick_color baba = @s color

# update preview and menu
scoreboard players operation @e[type=item_display,tag=baba.object,tag=tile_editor_preview,sort=nearest,limit=1] color = pick_color baba
execute as @e[type=item_display,tag=baba.object,tag=tile_editor_preview,sort=nearest,limit=1] at @s run function baba:dev/tile_editor/update_preview
execute as @e[type=item_display,tag=tile_editor_menu] store success entity @s Glowing byte 1 if score @s color = pick_color baba

# update block
execute at @e[type=item_display,tag=baba.object,tag=tile_editor_preview,sort=nearest,limit=1] unless data block ~ ~-1 ~ Items[0] run data modify block ~ ~-1 ~ Items append value {id:"book"}
execute at @e[type=item_display,tag=baba.object,tag=tile_editor_preview,sort=nearest,limit=1] unless data block ~ ~-1 ~ Bees[0] run data modify block ~ ~-1 ~ Bees append value {EntityData:{}}
execute at @e[type=item_display,tag=baba.object,tag=tile_editor_preview,sort=nearest,limit=1] store result block ~ ~-1 ~ Items[0].components."minecraft:custom_data".extra.scores.color int 1 run scoreboard players get pick_color baba
execute at @e[type=item_display,tag=baba.object,tag=tile_editor_preview,sort=nearest,limit=1] store result block ~ ~-1 ~ Bees[0].EntityData.extra.scores.color int 1 run scoreboard players get pick_color baba
