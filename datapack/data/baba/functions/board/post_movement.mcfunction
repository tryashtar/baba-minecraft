tag @e[type=item_display,tag=baba.object,tag=move_success] remove move_success
execute if score empty baba matches 1 as @e[type=item_display,tag=empty] at @s if entity @e[type=item_display,tag=baba.object,tag=!empty,distance=..0.1,limit=1] run kill @s
execute if score empty baba matches 1 at @e[type=marker,tag=baba.space] unless entity @e[type=item_display,tag=baba.object,distance=..0.1,limit=1] run summon item_display ~ ~ ~ {width:0f,height:0f,Tags:["baba.object","not_all","empty","spawn","assign"]}
execute if score empty baba matches 1 run scoreboard players set @e[type=item_display,tag=empty,tag=spawn] sprite 2925313
execute if score empty baba matches 1 as @e[type=item_display,tag=empty,tag=spawn] store result score @s facing run loot spawn ~ ~ ~ loot baba:random_4
execute if score empty baba matches 1 run tag @e[type=item_display,tag=empty,tag=spawn] remove spawn
