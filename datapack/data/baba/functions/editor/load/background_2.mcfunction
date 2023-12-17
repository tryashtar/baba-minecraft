$fill ~-1 ~-1 ~-1 ~$(wallx) ~-1 ~$(wallz) $(wall)
$fill ~ ~-1 ~ ~$(floorx) ~-1 ~$(floorz) $(floor)
$execute if score level_background baba matches 1.. run fill ~ ~-1 ~ ~$(floorx) ~-1 ~$(floorz) barrier
