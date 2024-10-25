data modify storage baba:main spawn set value [{sprite:243140,text:243140}]

execute as @e[tag=baba,x=63.0,y=67.0,z=-168.0,dx=24,dy=14,dz=1,scores={sprite=139055},limit=1] at @s run function baba:board/interact/transform_loop
execute as @e[tag=baba,x=63.0,y=67.0,z=-168.0,dx=24,dy=14,dz=1,scores={sprite=139055},limit=1] at @s run function baba:board/interact/remove
execute as @e[tag=baba,x=63.0,y=67.0,z=-168.0,dx=24,dy=14,dz=1,scores={sprite=243140},tag=dirty] at @s run function baba:board/graphics/connector
execute as @e[tag=baba,x=63.0,y=67.0,z=-168.0,dx=24,dy=14,dz=1,scores={sprite=243140},tag=dirty] at @s run function baba:display/object
