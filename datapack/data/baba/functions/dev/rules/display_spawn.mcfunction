summon area_effect_cloud ~ ~0.5 ~ {Tags:["rule_display","spawn1"],Duration:100000,CustomNameVisible:1b}
summon area_effect_cloud ~ ~ ~ {Tags:["rule_display","spawn2"],Duration:100000,CustomNameVisible:1b}
scoreboard players operation text_id baba = @s text_id
data modify storage baba:main object_text set from entity @s data.text
item modify entity 89fd5d65-fc19-4848-8c51-e72ea0c1d85c weapon.mainhand baba:debug_display1
execute positioned ~ ~0.5 ~ run data modify entity @e[type=area_effect_cloud,tag=rule_display,tag=spawn1,distance=..0.1,limit=1] CustomName set from entity 89fd5d65-fc19-4848-8c51-e72ea0c1d85c HandItems[0].tag.display.Name
execute positioned ~ ~0.5 ~ run tag @e[type=area_effect_cloud,tag=rule_display,tag=spawn1,distance=..0.1,limit=1] remove spawn
item modify entity 89fd5d65-fc19-4848-8c51-e72ea0c1d85c weapon.mainhand baba:debug_display2
data modify entity @e[type=area_effect_cloud,tag=rule_display,tag=spawn2,distance=..0.1,limit=1] CustomName set from entity 89fd5d65-fc19-4848-8c51-e72ea0c1d85c HandItems[0].tag.display.Name
tag @e[type=area_effect_cloud,tag=rule_display,tag=spawn2,distance=..0.1,limit=1] remove spawn
