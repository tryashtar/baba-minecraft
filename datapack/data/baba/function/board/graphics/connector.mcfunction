tag @s remove up
tag @s remove down
tag @s remove left
tag @s remove right
scoreboard players operation sprite baba = @s sprite

# connect to objects of the same type
# lines also connect to levels
execute unless block ~1 ~-1 ~ #baba:board run tag @s add up
execute if entity @s[tag=!up] positioned ~1 ~ ~ if entity @e[type=item_display,tag=baba.object,tag=active,tag=connector,predicate=baba:match_score/sprite,distance=..0.1,limit=1] run tag @s add up
execute if entity @s[tag=!up,scores={sprite=243140}] positioned ~1 ~ ~ if entity @e[type=item_display,tag=baba.object,tag=active,scores={sprite=6491892},distance=..0.1,limit=1] run tag @s add up

execute unless block ~-1 ~-1 ~ #baba:board run tag @s add down
execute if entity @s[tag=!down] positioned ~-1 ~ ~ if entity @e[type=item_display,tag=baba.object,tag=active,tag=connector,predicate=baba:match_score/sprite,distance=..0.1,limit=1] run tag @s add down
execute if entity @s[tag=!down,scores={sprite=243140}] positioned ~-1 ~ ~ if entity @e[type=item_display,tag=baba.object,tag=active,scores={sprite=6491892},distance=..0.1,limit=1] run tag @s add down

execute unless block ~ ~-1 ~-1 #baba:board run tag @s add left
execute if entity @s[tag=!left] positioned ~ ~ ~-1 if entity @e[type=item_display,tag=baba.object,tag=active,tag=connector,predicate=baba:match_score/sprite,distance=..0.1,limit=1] run tag @s add left
execute if entity @s[tag=!left,scores={sprite=243140}] positioned ~ ~ ~-1 if entity @e[type=item_display,tag=baba.object,tag=active,scores={sprite=6491892},distance=..0.1,limit=1] run tag @s add left

execute unless block ~ ~-1 ~1 #baba:board run tag @s add right
execute if entity @s[tag=!right] positioned ~ ~ ~1 if entity @e[type=item_display,tag=baba.object,tag=active,tag=connector,predicate=baba:match_score/sprite,distance=..0.1,limit=1] run tag @s add right
execute if entity @s[tag=!right,scores={sprite=243140}] positioned ~ ~ ~1 if entity @e[type=item_display,tag=baba.object,tag=active,scores={sprite=6491892},distance=..0.1,limit=1] run tag @s add right
