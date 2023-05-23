execute if score direction baba matches 1 rotated 270 0 positioned ^ ^ ^1 run function baba:board/movement/select_move
execute if score direction baba matches 2 rotated 90 0 positioned ^ ^ ^1 run function baba:board/movement/select_move
execute if score direction baba matches 3 rotated 180 0 positioned ^ ^ ^1 run function baba:board/movement/select_move
execute if score direction baba matches 4 rotated 0 0 positioned ^ ^ ^1 run function baba:board/movement/select_move
scoreboard players operation @s facing = direction baba
scoreboard players operation @s move_dir = direction baba
tag @s remove can_move
tag @s add dirty

data modify storage baba:main level_name set value '""'
execute at @s as @e[type=item_display,tag=baba.object,distance=..0.1,nbt={item:{tag:{level_data:{}}}},limit=1] run function baba:progress/get_name
data modify entity @e[type=text_display,tag=baba.text,limit=1] text set value '[{"storage":"baba:main","nbt":"level_name","interpret":true,"font":"baba:font"},"\\n\\ue000"]'
