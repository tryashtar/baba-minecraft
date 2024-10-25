scoreboard players add @e[type=item_display,tag=baba.object,tag=dirty,scores={float_level=1..},x=63.0,y=67.0,z=-168.0,dx=24,dy=14,dz=1] z_layer 100
execute as @e[type=item_display,tag=baba.object,tag=dirty,tag=!empty,x=63.0,y=67.0,z=-168.0,dx=24,dy=14,dz=1] on passengers run kill @s
execute as @e[type=item_display,tag=baba.object,tag=dirty,tag=!empty,x=63.0,y=67.0,z=-168.0,dx=24,dy=14,dz=1] run function baba:display/object
scoreboard players remove @e[type=item_display,tag=baba.object,tag=dirty,scores={z_layer=100..},x=63.0,y=67.0,z=-168.0,dx=24,dy=14,dz=1] z_layer 100
tag @e[tag=baba.object,tag=dirty,x=63.0,y=67.0,z=-168.0,dx=24,dy=14,dz=1] remove dirty
