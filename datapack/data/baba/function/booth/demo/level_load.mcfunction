scoreboard players remove load_timer baba 1
execute if score load_timer baba matches 22 as @e[type=item_display,tag=baba,x=63.0,y=67.0,z=-168.0,dx=24,dy=14,dz=1] run data merge entity @s {start_interpolation:-1,interpolation_duration:2,transformation:{scale:[1.5f,1.5f,1.5f]}}
execute if score load_timer baba matches 20 as @e[type=item_display,tag=baba,x=63.0,y=67.0,z=-168.0,dx=24,dy=14,dz=1] run data merge entity @s {start_interpolation:-1,interpolation_duration:10,transformation:{scale:[0f,0f,0f],left_rotation:[0.5f,-0.5f,-0.5f,0.5f]}}
execute if score load_timer baba matches 10 run function baba:booth/demo/load_level
execute if score load_timer baba matches 8 as @e[type=item_display,tag=baba,x=63.0,y=67.0,z=-168.0,dx=24,dy=14,dz=1] run data merge entity @s {start_interpolation:-1,interpolation_duration:10,transformation:{scale:[1f,1f,1f],left_rotation:[0.5f,0.5f,0.5f,0.5f]}}
