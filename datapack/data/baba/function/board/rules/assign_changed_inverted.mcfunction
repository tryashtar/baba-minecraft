scoreboard players operation sprite baba = @s sprite
execute if entity @s[tag=subject_all] run tag @e[type=marker,tag=baba.object,tag=active,tag=empty,tag=!assign,x=63.0,y=67.0,z=-168.0,dx=24,dy=14,dz=1] add assign
execute if entity @s[tag=subject_all] run tag @e[type=item_display,tag=baba.object,tag=active,tag=!assign,scores={sprite=397973},x=63.0,y=67.0,z=-168.0,dx=24,dy=14,dz=1] add assign
execute if entity @s[tag=subject_group] run tag @e[type=#baba:object,tag=baba.object,tag=active,tag=!assign,tag=!not_all,tag=!prop.group,x=63.0,y=67.0,z=-168.0,dx=24,dy=14,dz=1] add assign
execute if entity @s[tag=!subject_all,tag=!subject_group] run tag @e[type=#baba:object,tag=baba.object,tag=active,tag=!assign,tag=!not_all,predicate=!baba:match_score/sprite,x=63.0,y=67.0,z=-168.0,dx=24,dy=14,dz=1] add assign
