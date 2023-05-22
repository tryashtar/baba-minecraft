execute as @e[type=item_display,tag=interpolate] run data merge entity @s {start_interpolation:0,interpolation_duration:2,transformation:{translation:[0f,0f,0f]}}
tag @e[type=item_display,tag=interpolate] remove interpolate
