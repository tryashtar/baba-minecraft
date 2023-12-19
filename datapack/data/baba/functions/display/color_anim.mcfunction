scoreboard players add @s color_anim 1
scoreboard players set @s[scores={color_anim=7..}] color_anim 1
execute if score @s color_anim matches 1..3 run scoreboard players set color baba 15029051
execute if score @s color_anim matches 4..6 run scoreboard players set color baba 5602016
execute store result storage baba:main context.color int 1 run scoreboard players get color baba
function baba:display/palette with storage baba:main context
execute store result entity @s item.tag.CustomPotionColor int 1 run scoreboard players get color baba
