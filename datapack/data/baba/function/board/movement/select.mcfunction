execute if score direction baba matches 1 rotated 0 -90 positioned ^ ^ ^1 run function baba:board/movement/select_move
execute if score direction baba matches 2 rotated 0 90 positioned ^ ^ ^1 run function baba:board/movement/select_move
execute if score direction baba matches 3 rotated 90 0 positioned ^ ^ ^1 run function baba:board/movement/select_move
execute if score direction baba matches 4 rotated -90 0 positioned ^ ^ ^1 run function baba:board/movement/select_move
scoreboard players operation @s facing = direction baba
tag @s remove can_move
tag @s add dirty

data modify storage baba:main level_name set value '""'
scoreboard players set complete baba 0
execute at @s as @e[type=#baba:object,tag=baba.object,distance=..0.1,predicate=baba:has_level_data,limit=1] run data modify storage baba:main level_name set from entity @s item.components."minecraft:custom_data".baba.level.name
execute at @s if entity @e[type=#baba:object,tag=baba.object,distance=..0.1,predicate=baba:has_level_data,tag=complete,limit=1] run scoreboard players set complete baba 1
execute if score complete baba matches 0 run data modify entity @e[type=text_display,tag=baba.text,limit=1] text set value '[{"storage":"baba:main","nbt":"level_name","interpret":true,"font":"baba:font"},"\\n\\ue000"]'
execute if score complete baba matches 1 run data modify entity @e[type=text_display,tag=baba.text,limit=1] text set value '[{"storage":"baba:main","nbt":"level_name","interpret":true,"font":"baba:font","color":"#51c957"},"\\n\\ue000"]'
