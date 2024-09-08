execute store result storage baba:main context.level_height int 1 run scoreboard players get @s level_height
execute store result storage baba:main context.level_width int 1 run scoreboard players get @s level_width
data modify storage baba:main context.palette set from entity @s data.color_palette
function baba:board/tag_objects with storage baba:main context

execute as @e[type=item_display,tag=baba.particle,tag=active,tag=!init] run function baba:display/particle/init
execute as @e[type=item_display,tag=baba.particle,tag=active] run function baba:display/particle/tick
execute at @e[type=#baba:object,tag=baba.object,tag=active,tag=prop.win] if predicate baba:10_percent run summon item_display ~ ~0.1 ~ {width:2f,height:0.1f,item_display:"fixed",Tags:["baba","baba.particle","win_particle"]}
execute at @e[type=#baba:object,tag=baba.object,tag=active,tag=prop.tele] if predicate baba:5_percent run summon item_display ~ ~0.1 ~ {width:2f,height:0.1f,item_display:"fixed",Tags:["baba","baba.particle","tele_particle"]}
scoreboard players add @s float_anim 1
execute if score @s float_anim matches 1 as @e[type=item_display,tag=baba.object,tag=active,tag=prop.float] run data merge entity @s {start_interpolation:0,interpolation_duration:20,transformation:{translation:[0.2f,0f,0f]}}
execute if score @s float_anim matches 35 as @e[type=item_display,tag=baba.object,tag=active,tag=prop.float] run data merge entity @s {start_interpolation:0,interpolation_duration:20,transformation:{translation:[0f,0f,0f]}}
execute if score @s float_anim matches 70.. run scoreboard players set @s float_anim 0
execute as @e[type=item_display,tag=baba.object,tag=active,tag=prop.red,tag=prop.blue] run function baba:display/color_anim
