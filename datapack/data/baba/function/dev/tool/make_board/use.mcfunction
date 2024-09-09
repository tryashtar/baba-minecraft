execute as @p if entity @s[x_rotation=30..,y_rotation=-135..-45] rotated -90 0 run function baba:dev/tool/make_board/down_east
execute as @p if entity @s[x_rotation=30..,y_rotation=-45..45] rotated 0 0 run function baba:dev/tool/make_board/down_south
execute as @p if entity @s[x_rotation=30..,y_rotation=45..135] rotated 90 0 run function baba:dev/tool/make_board/down_west
execute as @p if entity @s[x_rotation=30..,y_rotation=135..-135] rotated 180 0 run function baba:dev/tool/make_board/down_north

execute as @p if entity @s[x_rotation=..30,y_rotation=-135..-45] rotated -90 0 run function baba:dev/tool/make_board/wall_east
execute as @p if entity @s[x_rotation=..30,y_rotation=-45..45] rotated 0 0 run function baba:dev/tool/make_board/wall_south
execute as @p if entity @s[x_rotation=..30,y_rotation=45..135] rotated 90 0 run function baba:dev/tool/make_board/wall_west
execute as @p if entity @s[x_rotation=..30,y_rotation=135..-135] rotated 180 0 run function baba:dev/tool/make_board/wall_north
