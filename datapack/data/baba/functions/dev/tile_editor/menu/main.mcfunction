kill @e[tag=tile_editor_menu]

summon item_display ~ ~ ~ {item:{id:"tube_coral_block",Count:1b},transformation:{translation:[1.2f,0.2f,0.5f],scale:[0.1f,0.4f,0.8f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f]},Tags:["tile_editor_menu"]}
summon text_display ~ ~ ~ {text:'"color"',transformation:{translation:[1.14f,0.1f,0.5f],scale:[0.8f,0.8f,0.8f],left_rotation:[0f,-0.707f,0f,0.707f],right_rotation:[0f,0f,0f,1f]},background:-16777216,Tags:["tile_editor_menu"]}
summon interaction ~1.55 ~ ~0.5 {response:1b,width:0.8f,height:0.4f,Tags:["tile_editor_menu","interact_color"]}

execute as @e[type=item_display,tag=baba.object,tag=tile_editor_preview,sort=nearest,limit=1] if score @s sprite matches 5111351 run summon item_display ~ ~ ~ {item:{id:"barrel",Count:1b},transformation:{translation:[1.2f,0.6f,0.5f],scale:[0.1f,0.4f,0.8f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f]},Tags:["tile_editor_menu"]}
execute as @e[type=item_display,tag=baba.object,tag=tile_editor_preview,sort=nearest,limit=1] if score @s sprite matches 5111351 run summon text_display ~ ~ ~ {text:'"number"',transformation:{translation:[1.14f,0.5f,0.5f],scale:[0.8f,0.8f,0.8f],left_rotation:[0f,-0.707f,0f,0.707f],right_rotation:[0f,0f,0f,1f]},background:-16777216,Tags:["tile_editor_menu"]}
execute as @e[type=item_display,tag=baba.object,tag=tile_editor_preview,sort=nearest,limit=1] if score @s sprite matches 5111351 run summon interaction ~1.55 ~0.4 ~0.5 {response:1b,width:0.8f,height:0.4f,Tags:["tile_editor_menu","interact_number"]}

summon item_display ~ ~ ~ {item:{id:"redstone_block",Count:1b},transformation:{translation:[1.2f,1.0f,0.5f],scale:[0.1f,0.4f,0.8f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f]},Tags:["tile_editor_menu"]}
summon text_display ~ ~ ~ {text:'"link"',transformation:{translation:[1.14f,0.9f,0.5f],scale:[0.8f,0.8f,0.8f],left_rotation:[0f,-0.707f,0f,0.707f],right_rotation:[0f,0f,0f,1f]},background:-16777216,Tags:["tile_editor_menu"]}
summon interaction ~1.55 ~0.8 ~0.5 {response:1b,width:0.8f,height:0.4f,Tags:["tile_editor_menu","interact_link"]}
