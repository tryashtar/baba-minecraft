$execute as @e[type=text_display,tag=baba.board_bg_wall] run data modify entity @s text set value '{"text":".","color":"$(wall_bg)"}'
$execute as @e[type=text_display,tag=baba.board_bg_floor] run data modify entity @s text set value '{"text":".","color":"$(floor_bg)"}'
