tag @s add inputting
summon interaction ~ ~0.6 ~ {Tags:["baba","baba.input"]}
execute positioned ~ ~0.6 ~ run ride @s mount @e[type=interaction,tag=baba.input,distance=..0.01,limit=1]
tag @s remove hold_up
tag @s remove hold_down
tag @s remove hold_left
tag @s remove hold_right
