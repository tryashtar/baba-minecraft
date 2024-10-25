# particle display
execute as @e[type=item_display,tag=baba.particle,tag=!init,distance=..40] run function baba:display/particle/init
execute as @e[type=item_display,tag=baba.particle,distance=..40] run function baba:display/particle/tick
execute at @e[type=item_display,tag=baba_ice,distance=..40,limit=1] if predicate baba:10_percent run summon item_display ~ ~0.1 ~ {width:2f,height:2f,item_display:"fixed",Tags:["baba","baba.particle","big_tele_particle"],billboard:"center",transformation:{left_rotation: [0.0f, 0.7071068f, 0.7071068f, 0.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f], translation: [0.0f, 0.0f, 0.5f]}}
execute as @a[distance=..40] at @s if entity @e[type=item_display,tag=baba_ice,distance=..1] run function baba:booth/ice_teleport

# door logic:
execute if score door_status baba matches 0 run function baba:booth/door/closed_tick
execute if score door_status baba matches 1 run function baba:booth/door/opened_tick

# demo logic:
execute as @e[type=interaction,tag=baba_play,distance=..40,limit=1] at @s run function baba:booth/demo/wait_tick
execute as @e[type=item_display,tag=baba_mount,distance=..40,limit=1] at @s run function baba:booth/demo/tick
