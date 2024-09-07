execute as @e[type=item_display,tag=baba.particle,tag=!init] run function baba:display/particle/init
execute as @e[type=item_display,tag=baba.particle] run function baba:display/particle/tick
execute at @e[type=#baba:object,tag=baba.object,tag=prop.win] if predicate baba:10_percent run summon item_display ~ ~0.1 ~ {width:2f,height:0.1f,item_display:"fixed",Tags:["baba","baba.particle","win_particle"]}
execute at @e[type=#baba:object,tag=baba.object,tag=prop.tele] if predicate baba:5_percent run summon item_display ~ ~0.1 ~ {width:2f,height:0.1f,item_display:"fixed",Tags:["baba","baba.particle","tele_particle"]}
scoreboard players add float_anim baba 1
execute if score float_anim baba matches 1 as @e[type=item_display,tag=baba.object,tag=prop.float] run data merge entity @s {start_interpolation:0,interpolation_duration:20,transformation:{translation:[0.2f,0f,0f]}}
execute if score float_anim baba matches 35 as @e[type=item_display,tag=baba.object,tag=prop.float] run data merge entity @s {start_interpolation:0,interpolation_duration:20,transformation:{translation:[0f,0f,0f]}}
execute if score float_anim baba matches 70.. run scoreboard players set float_anim baba 0
execute as @e[type=item_display,tag=baba.object,tag=prop.red,tag=prop.blue] run function baba:display/color_anim
