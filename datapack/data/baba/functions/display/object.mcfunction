execute store result entity @s Pos[1] double 0.0001 run scoreboard players get @s z_layer
execute at @s run tp @s ~ ~1.001 ~
execute store result storage baba:main context.appearance int 1 run scoreboard players get @s appearance
function baba:display/object.macro with storage baba:main context
execute at @s[tag=is_text,tag=!prop.hide] run function baba:display/object/text_overlay
execute at @s[scores={sprite=6491892},tag=!prop.hide] run function baba:display/object/level_icon
execute if entity @s[tag=prop.hide] run data modify storage baba:main model set value 0
data modify entity @s item.components."minecraft:custom_model_data" set from storage baba:main model
scoreboard players operation color baba = @s color
execute if entity @s[scores={sprite=397973,text_used=0}] run scoreboard players operation color baba = @s inactive_color
execute if entity @s[tag=prop.red] run scoreboard players set color baba 15029051
execute if entity @s[tag=prop.blue] run scoreboard players set color baba 5602016
execute store result storage baba:main context.color int 1 run scoreboard players get color baba
function baba:display/palette with storage baba:main context
execute store result entity @s item.components."minecraft:potion_contents".custom_color int 1 run scoreboard players get color baba
