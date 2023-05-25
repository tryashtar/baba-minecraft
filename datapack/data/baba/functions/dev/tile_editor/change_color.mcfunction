clear @a[tag=edit_color,distance=..3]
execute as @a[tag=edit_color,distance=..3] run function baba:dev/tile_editor/give_item
tag @a[distance=..3] remove edit_color
execute at @e[tag=tile_editor,distance=..3,sort=nearest,limit=1] unless data block ~ ~-1 ~ Items[0] run data modify block ~ ~-1 ~ Items append value {id:"book",Count:1b}
execute at @e[tag=tile_editor,distance=..3,sort=nearest,limit=1] run data modify block ~ ~-1 ~ Items[0].tag.extra.scores.color set from entity @s Item.tag.CustomPotionColor
data modify entity @e[type=item_display,tag=tile_color,distance=..3,sort=nearest,limit=1] item.tag.CustomPotionColor set from entity @s Item.tag.CustomPotionColor
kill @s
