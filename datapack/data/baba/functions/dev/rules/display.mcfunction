tag @e[type=area_effect_cloud,tag=rule_display] add kill
execute as @e[type=armor_stand,tag=baba.object,scores={sprite=30442,text_id=1..}] at @s run function baba:dev/rules/display_spawn
execute as @e[type=area_effect_cloud,tag=rule_display,tag=kill] run data modify entity @s Duration set value 1
