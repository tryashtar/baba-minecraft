execute as @p if entity @s[x_rotation=30..90,y_rotation=-135..-45] rotated 90 -90 run function baba:dev/tool/make_board/place_floor {facing:"west",rot:"90 -90"}
execute as @p if entity @s[x_rotation=30..90,y_rotation=-45..45] rotated 180 -90 run function baba:dev/tool/make_board/place_floor {facing:"north",rot:"180 -90"}
execute as @p if entity @s[x_rotation=30..90,y_rotation=45..135] rotated -90 -90 run function baba:dev/tool/make_board/place_floor {facing:"east",rot:"-90 -90"}
execute as @p if entity @s[x_rotation=30..90,y_rotation=135..-135] rotated 0 -90 run function baba:dev/tool/make_board/place_floor {facing:"south",rot:"0 -90"}

execute as @p if entity @s[x_rotation=-90..30,y_rotation=-135..-45] rotated 90 0 run function baba:dev/tool/make_board/place_wall {facing:"west",rot:"90 0"}
execute as @p if entity @s[x_rotation=-90..30,y_rotation=-45..45] rotated 180 0 run function baba:dev/tool/make_board/place_wall {facing:"north",rot:"180 -90"}
execute as @p if entity @s[x_rotation=-90..30,y_rotation=45..135] rotated -90 0 run function baba:dev/tool/make_board/place_wall {facing:"east",rot:"-90 -90"}
execute as @p if entity @s[x_rotation=-90..30,y_rotation=135..-135] rotated 0 0 run function baba:dev/tool/make_board/place_wall {facing:"south",rot:"0 -90"}

