execute as @p if entity @s[x_rotation=30..90,y_rotation=-135..-45] rotated 90 -90 run function baba:dev/tool/make_board/place_floor {facing:"west",setup:"rotated 90 -90 align y positioned ~ ~0.01 ~"}
execute as @p if entity @s[x_rotation=30..90,y_rotation=-45..45] rotated 180 -90 run function baba:dev/tool/make_board/place_floor {facing:"north",setup:"rotated 180 -90 align y positioned ~ ~0.01 ~"}
execute as @p if entity @s[x_rotation=30..90,y_rotation=45..135] rotated -90 -90 run function baba:dev/tool/make_board/place_floor {facing:"east",setup:"rotated -90 -90 align y positioned ~ ~0.01 ~"}
execute as @p if entity @s[x_rotation=30..90,y_rotation=135..-135] rotated 0 -90 run function baba:dev/tool/make_board/place_floor {facing:"south",setup:"rotated 0 -90 align y positioned ~ ~0.01 ~"}

execute as @p if entity @s[x_rotation=-90..30,y_rotation=-135..-45] rotated 90 0 run function baba:dev/tool/make_board/place_wall {facing:"west",setup:"rotated 90 0 align x positioned ~0.99 ~ ~"}
execute as @p if entity @s[x_rotation=-90..30,y_rotation=-45..45] rotated 180 0 run function baba:dev/tool/make_board/place_wall {facing:"north",setup:"rotated 180 0 align z positioned ~ ~ ~0.99"}
execute as @p if entity @s[x_rotation=-90..30,y_rotation=45..135] rotated -90 0 run function baba:dev/tool/make_board/place_wall {facing:"east",setup:"rotated -90 0 align x positioned ~0.01 ~ ~"}
execute as @p if entity @s[x_rotation=-90..30,y_rotation=135..-135] rotated 0 0 run function baba:dev/tool/make_board/place_wall {facing:"south",setup:"rotated 0 0 align z positioned ~ ~ ~0.01"}
