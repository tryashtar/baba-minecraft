execute as @e[type=item_display,tag=empty] at @s store result score @s life if entity @e[type=item_display,tag=baba.object,distance=..0.1,limit=2]
kill @e[type=item_display,tag=empty,scores={life=2..}]
execute at @e[type=marker,tag=baba.space] unless entity @e[type=item_display,tag=baba.object,distance=..0.1,limit=1] run summon item_display ~ ~ ~ {width:0f,height:0f,Tags:["baba.object","not_all","empty","spawn","assign"]}
scoreboard players set @e[type=item_display,tag=empty,tag=spawn] sprite 2925313
execute as @e[type=item_display,tag=empty,tag=spawn] store result score @s facing run loot spawn ~ ~ ~ loot baba:random_4
tag @e[type=item_display,tag=empty,tag=spawn] remove spawn
