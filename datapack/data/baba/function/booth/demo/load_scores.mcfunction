data modify storage baba:main scores set value {}
execute if entity @s[type=marker] run data modify storage baba:main scores set from entity @s data.saved_scores
execute if entity @s[type=item_display] run data modify storage baba:main scores set from entity @s item.components."minecraft:custom_data".baba.saved_scores

execute store result score @s sprite run data get storage baba:main scores.sprite
execute store result score @s appearance run data get storage baba:main scores.appearance
execute store result score @s text run data get storage baba:main scores.text
execute store result score @s facing run data get storage baba:main scores.facing
execute store result score @s direction run data get storage baba:main scores.direction
execute store result score @s frame run data get storage baba:main scores.frame
execute store result score @s walk run data get storage baba:main scores.walk
execute store result score @s float_level run data get storage baba:main scores.float_level
execute store result score @s move_stacks run data get storage baba:main scores.move_stacks
execute store result score @s shift_stacks run data get storage baba:main scores.shift_stacks
execute store result score @s z_layer run data get storage baba:main scores.z_layer
execute store result score @s color run data get storage baba:main scores.color
execute store result score @s inactive_color run data get storage baba:main scores.inactive_color
execute store result score @s repeats run data get storage baba:main scores.repeats
execute store result score @s number run data get storage baba:main scores.number
execute store result score @s win run data get storage baba:main scores.win
execute store result score @s text_id run data get storage baba:main scores.text_id
execute store result score @s text_used run data get storage baba:main scores.text_used
execute store result score @s text_disabled run data get storage baba:main scores.text_disabled
execute store result score @s last_disabled run data get storage baba:main scores.last_disabled
execute store result score @s life run data get storage baba:main scores.life
execute store result score @s color_anim run data get storage baba:main scores.color_anim
execute store result score @s move_cooldown run data get storage baba:main scores.move_cooldown
execute store result score @s buffer run data get storage baba:main scores.buffer
execute store result score @s level_height run data get storage baba:main scores.level_height
execute store result score @s level_width run data get storage baba:main scores.level_width
execute store result score @s level_background run data get storage baba:main scores.level_background
execute store result score @s float_anim run data get storage baba:main scores.float_anim
