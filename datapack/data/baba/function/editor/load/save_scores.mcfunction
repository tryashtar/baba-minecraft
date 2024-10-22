data modify storage baba:main scores set value {}
execute store result storage baba:main scores.sprite int 1 run scoreboard players get @s sprite
execute store result storage baba:main scores.appearance int 1 run scoreboard players get @s appearance
execute store result storage baba:main scores.text int 1 run scoreboard players get @s text
execute store result storage baba:main scores.facing int 1 run scoreboard players get @s facing
execute store result storage baba:main scores.direction int 1 run scoreboard players get @s direction
execute store result storage baba:main scores.frame int 1 run scoreboard players get @s frame
execute store result storage baba:main scores.walk int 1 run scoreboard players get @s walk
execute store result storage baba:main scores.float_level int 1 run scoreboard players get @s float_level
execute store result storage baba:main scores.move_stacks int 1 run scoreboard players get @s move_stacks
execute store result storage baba:main scores.shift_stacks int 1 run scoreboard players get @s shift_stacks
execute store result storage baba:main scores.z_layer int 1 run scoreboard players get @s z_layer
execute store result storage baba:main scores.color int 1 run scoreboard players get @s color
execute store result storage baba:main scores.inactive_color int 1 run scoreboard players get @s inactive_color
execute store result storage baba:main scores.repeats int 1 run scoreboard players get @s repeats
execute store result storage baba:main scores.number int 1 run scoreboard players get @s number
execute store result storage baba:main scores.win int 1 run scoreboard players get @s win
execute store result storage baba:main scores.text_id int 1 run scoreboard players get @s text_id
execute store result storage baba:main scores.text_used int 1 run scoreboard players get @s text_used
execute store result storage baba:main scores.text_disabled int 1 run scoreboard players get @s text_disabled
execute store result storage baba:main scores.last_disabled int 1 run scoreboard players get @s last_disabled
execute store result storage baba:main scores.life int 1 run scoreboard players get @s life
execute store result storage baba:main scores.color_anim int 1 run scoreboard players get @s color_anim
execute store result storage baba:main scores.move_cooldown int 1 run scoreboard players get @s move_cooldown
execute store result storage baba:main scores.buffer int 1 run scoreboard players get @s buffer
execute store result storage baba:main scores.level_height int 1 run scoreboard players get @s level_height
execute store result storage baba:main scores.level_width int 1 run scoreboard players get @s level_width
execute store result storage baba:main scores.level_background int 1 run scoreboard players get @s level_background
execute store result storage baba:main scores.float_anim int 1 run scoreboard players get @s float_anim

execute if entity @s[type=marker] run data modify entity @s data.saved_scores set from storage baba:main scores
execute if entity @s[type=item_display] run item modify entity @s contents {function:"copy_custom_data",source:{type:"storage",source:"baba:main"},ops:[{op:"replace",source:"scores",target:"baba.saved_scores"}]}
