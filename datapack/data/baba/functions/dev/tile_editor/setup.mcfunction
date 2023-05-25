kill @e[tag=tile_editor]
summon item_display ~ ~ ~ {item:{id:"tube_coral_block",Count:1b},transformation:{translation:[0.85f,-0.1f,0.15f],scale:[0.3f,0.3f,0.3f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f]},Tags:["tile_editor"]}
summon text_display ~ ~ ~ {text:'"color"',transformation:{translation:[0.9f,0.06f,0.15f],scale:[0.3f,0.3f,0.3f],left_rotation:[-0.5f,-0.5f,-0.5f,0.5f],right_rotation:[0f,0f,0f,1f]},background:-16777216,Tags:["tile_editor"]}
summon item_display ~ ~ ~ {item:{id:"potion",Count:1b,tag:{CustomModelData:1}},transformation:{translation:[0.8f,0.2f,0.15f],scale:[0.2f,0.2f,0.2f],left_rotation:[0f,0.707f,0f,0.707f],right_rotation:[0f,0f,0f,1f]},Tags:["tile_editor","tile_color"]}
summon item_display ~ ~ ~ {item:{id:"barrel",Count:1b},transformation:{translation:[0.85f,-0.1f,0.5f],scale:[0.3f,0.3f,0.3f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f]},Tags:["tile_editor"]}
summon text_display ~ ~ ~ {text:'"number"',transformation:{translation:[0.9f,0.06f,0.5f],scale:[0.3f,0.3f,0.3f],left_rotation:[-0.5f,-0.5f,-0.5f,0.5f],right_rotation:[0f,0f,0f,1f]},background:-16777216,Tags:["tile_editor"]}
summon text_display ~ ~ ~ {transformation:{translation:[0.725f,0.06f,0.5f],scale:[0.6f,0.6f,0.6f],left_rotation:[-0.5f,-0.5f,-0.5f,0.5f],right_rotation:[0f,0f,0f,1f]},background:0,Tags:["tile_editor","tile_number"]}
summon item_display ~ ~ ~ {item:{id:"redstone_block",Count:1b},transformation:{translation:[0.85f,-0.1f,0.85f],scale:[0.3f,0.3f,0.3f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f]},Tags:["tile_editor"]}
summon text_display ~ ~ ~ {text:'"link"',transformation:{translation:[0.9f,0.06f,0.85f],scale:[0.3f,0.3f,0.3f],left_rotation:[-0.5f,-0.5f,-0.5f,0.5f],right_rotation:[0f,0f,0f,1f]},background:-16777216,Tags:["tile_editor"]}
summon text_display ~ ~ ~ {text:'"baba is you"',transformation:{translation:[0.8f,0.06f,0.85f],scale:[0.2f,0.2f,0.2f],left_rotation:[-0.5f,-0.5f,-0.5f,0.5f],right_rotation:[0f,0f,0f,1f]},background:0,Tags:["tile_editor","tile_link"]}
summon interaction ~0.85 ~-0.2 ~0.15 {response:1b,width:0.3f,height:0.3f,Tags:["tile_editor","tile_color"]}
summon interaction ~0.85 ~-0.2 ~0.5 {response:1b,width:0.3f,height:0.3f,Tags:["tile_editor","tile_number"]}
summon interaction ~0.85 ~-0.2 ~0.85 {response:1b,width:0.3f,height:0.3f,Tags:["tile_editor","tile_link"]}

execute store result score color baba run data get block ~ ~-1 ~ Items[0].tag.extra.scores.color
execute store result entity @e[type=item_display,tag=tile_color,distance=..1,limit=1] item.tag.CustomPotionColor int 1 run scoreboard players get color baba
execute store result score number baba run data get block ~ ~-1 ~ Items[0].tag.extra.scores.number
data modify entity @e[type=text_display,tag=tile_number,distance=..1,limit=1] text set value '{"score":{"name":"number","objective":"baba"}}'
