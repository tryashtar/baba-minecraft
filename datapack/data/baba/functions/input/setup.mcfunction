tag @s add inputting
summon minecart ~ ~ ~ {Tags:["baba.input"],NoGravity:1b,Invulnerable:1b}
ride @s mount @e[type=minecart,tag=baba.input,limit=1]
tag @s remove hold_up
tag @s remove hold_down
tag @s remove hold_left
tag @s remove hold_right
