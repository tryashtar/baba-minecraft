$execute unless score no_wall baba matches 1 run fill ^-1 ^-1 ^-1 ^$(level_width) ^$(level_height) ^-1 $(wall)
$execute positioned ^-1 ^-1 ^ run fill ^1 ^1 ^-1 ^$(level_width) ^$(level_height) ^-1 $(floor)
$execute if score @s level_background matches 1.. positioned ^-1 ^-1 ^ run fill ^1 ^1 ^-1 ^$(level_width) ^$(level_height) ^-1 barrier
$execute as @e[type=text_display,tag=baba.board_bg_wall] run data modify entity @s text set value '{"text":".","color":"$(wall_bg)"}'
$execute as @e[type=text_display,tag=baba.board_bg_floor] run data modify entity @s text set value '{"text":".","color":"$(floor_bg)"}'
