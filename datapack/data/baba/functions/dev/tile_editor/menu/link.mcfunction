kill @e[tag=tile_editor_menu]

scoreboard players set y baba 0
scoreboard players set x baba 0
execute store result score y baba run data get entity @e[type=item_display,tag=baba.object,tag=tile_editor_preview,sort=nearest,limit=1] item.components."minecraft:custom_data".baba.level_data.link[0]
execute store result score x baba run data get entity @e[type=item_display,tag=baba.object,tag=tile_editor_preview,sort=nearest,limit=1] item.components."minecraft:custom_data".baba.level_data.link[1]
data modify storage baba:main link set value [-1,-1]
data modify storage baba:main level_name set value '[{"text":"[","color":"red"},{"score":{"name":"y","objective":"baba"}},",",{"score":{"name":"x","objective":"baba"}},"]"]'
execute as @e[type=item_display,tag=baba.object,tag=tile_editor_preview,sort=nearest,limit=1] run function baba:progress/get_name

summon text_display ~-0.5 ~-0.5 ~ {text:'{"storage":"baba:main","nbt":"level_name","interpret":true}',alignment:"center",transformation:{translation:[0f,0f,0f],scale:[1.5f,1.5f,1.5f],left_rotation:[0f,-0.707f,0f,0.707f],right_rotation:[0f,0f,0f,1f]},background:-16777216,Tags:["tile_editor_menu","name"]}
summon text_display ~-0.5 ~0.4 ~-0.2 {text:'"↑"',alignment:"center",transformation:{translation:[0f,0f,0f],scale:[1.5f,1.5f,1.5f],left_rotation:[0f,-0.707f,0f,0.707f],right_rotation:[0f,0f,0f,1f]},background:-16777216,Tags:["tile_editor_menu"]}
summon text_display ~-0.5 ~ ~-0.2 {text:'"↓"',alignment:"center",transformation:{translation:[0f,0f,0f],scale:[1.5f,1.5f,1.5f],left_rotation:[0f,-0.707f,0f,0.707f],right_rotation:[0f,0f,0f,1f]},background:-16777216,Tags:["tile_editor_menu"]}
summon interaction ~-0.3 ~0.4 ~-0.2 {response:1b,width:0.4f,height:0.4f,Tags:["tile_editor_menu","interact_link_set","up"]}
summon interaction ~-0.3 ~ ~-0.2 {response:1b,width:0.4f,height:0.4f,Tags:["tile_editor_menu","interact_link_set","down"]}
summon text_display ~-0.5 ~0.4 ~0.2 {text:'"▶"',alignment:"center",transformation:{translation:[0f,0f,0f],scale:[1.5f,1.5f,1.5f],left_rotation:[0f,-0.707f,0f,0.707f],right_rotation:[0f,0f,0f,1f]},background:-16777216,Tags:["tile_editor_menu"]}
summon text_display ~-0.5 ~ ~0.2 {text:'"◀"',alignment:"center",transformation:{translation:[0f,0f,0f],scale:[1.5f,1.5f,1.5f],left_rotation:[0f,-0.707f,0f,0.707f],right_rotation:[0f,0f,0f,1f]},background:-16777216,Tags:["tile_editor_menu"]}
summon interaction ~-0.3 ~0.4 ~0.2 {response:1b,width:0.4f,height:0.4f,Tags:["tile_editor_menu","interact_link_set","right"]}
summon interaction ~-0.3 ~ ~0.2 {response:1b,width:0.4f,height:0.4f,Tags:["tile_editor_menu","interact_link_set","left"]}
