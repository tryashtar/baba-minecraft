$execute unless score no_wall baba matches 1 run fill ~-1 ~-1 ~-1 ~$(level_height) ~-1 ~$(level_width) $(wall)
$execute positioned ~-1 ~ ~-1 run fill ~1 ~-1 ~1 ~$(level_height) ~-1 ~$(level_width) $(floor)
$execute if score @s level_background matches 1.. positioned ~-1 ~ ~-1 run fill ~1 ~-1 ~1 ~$(level_height) ~-1 ~$(level_width) barrier
