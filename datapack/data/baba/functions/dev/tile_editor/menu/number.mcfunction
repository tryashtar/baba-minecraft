kill @e[tag=tile_editor_menu]

summon text_display ~-0.5 ~0.2 ~ {text:'{"score":{"name":"@e[type=item_display,tag=baba.object,tag=tile_editor_preview,sort=nearest,limit=1]","objective":"number"}}',transformation:{translation:[0f,0f,0f],scale:[1.5f,1.5f,1.5f],left_rotation:[0f,-0.707f,0f,0.707f],right_rotation:[0f,0f,0f,1f]},background:-16777216,Tags:["tile_editor_menu","number"]}
summon text_display ~-0.5 ~0.2 ~-0.4 {text:'"↓"',transformation:{translation:[0f,0f,0f],scale:[1.5f,1.5f,1.5f],left_rotation:[0f,-0.707f,0f,0.707f],right_rotation:[0f,0f,0f,1f]},background:-16777216,Tags:["tile_editor_menu"]}
summon interaction ~-0.3 ~0.2 ~-0.4 {response:1b,width:0.4f,height:0.4f,Tags:["tile_editor_menu","interact_number_set","down"]}
summon text_display ~-0.5 ~0.2 ~0.4 {text:'"↑"',transformation:{translation:[0f,0f,0f],scale:[1.5f,1.5f,1.5f],left_rotation:[0f,-0.707f,0f,0.707f],right_rotation:[0f,0f,0f,1f]},background:-16777216,Tags:["tile_editor_menu"]}
summon interaction ~-0.3 ~0.2 ~0.4 {response:1b,width:0.4f,height:0.4f,Tags:["tile_editor_menu","interact_number_set","up"]}
summon text_display ~-0.5 ~-0.2 ~ {transformation:{translation:[0f,0f,0f],scale:[1f,1f,1f],left_rotation:[0f,-0.707f,0f,0.707f],right_rotation:[0f,0f,0f,1f]},background:-16777216,Tags:["tile_editor_menu","style"]}
summon interaction ~-0.3 ~-0.3 ~ {response:1b,width:0.5f,height:0.4f,Tags:["tile_editor_menu","interact_number_set","style"]}

execute as @e[type=item_display,tag=baba.object,tag=tile_editor_preview,sort=nearest,limit=1] if entity @s[tag=style.digit] run data modify entity @e[type=text_display,tag=style,sort=nearest,limit=1] text set value '"123"'
execute as @e[type=item_display,tag=baba.object,tag=tile_editor_preview,sort=nearest,limit=1] if entity @s[tag=style.letter] run data modify entity @e[type=text_display,tag=style,sort=nearest,limit=1] text set value '"ABC"'
execute as @e[type=item_display,tag=baba.object,tag=tile_editor_preview,sort=nearest,limit=1] if entity @s[tag=style.dice] run data modify entity @e[type=text_display,tag=style,sort=nearest,limit=1] text set value '"dice"'
