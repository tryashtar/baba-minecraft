# change color
scoreboard players operation color baba = @s color

# update preview and menu
execute store result entity @e[type=item_display,tag=baba.object,tag=tile_editor_preview,sort=nearest,limit=1] item.tag.CustomPotionColor int 1 run scoreboard players get color baba
execute as @e[type=item_display,tag=tile_editor_menu] store success entity @s Glowing byte 1 if score @s color = color baba

# update block
execute at @e[type=item_display,tag=baba.object,tag=tile_editor_preview,sort=nearest,limit=1] unless data block ~ ~-1 ~ Items[0] run data modify block ~ ~-1 ~ Items append value {id:"book",Count:1b}
execute at @e[type=item_display,tag=baba.object,tag=tile_editor_preview,sort=nearest,limit=1] store result block ~ ~-1 ~ Items[0].tag.extra.scores.color int 1 run scoreboard players get color baba
