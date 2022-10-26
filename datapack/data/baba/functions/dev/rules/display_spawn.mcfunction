summon area_effect_cloud ~ ~0.25 ~ {Tags:["rule_display","spawn"],Duration:100,CustomNameVisible:1b}
data modify storage baba:main object_text set from entity @s HandItems[0].tag.text
item modify entity 89fd5d65-fc19-4848-8c51-e72ea0c1d85c weapon.mainhand baba:dev/text_display_name
execute positioned ~ ~0.25 ~ run data modify entity @e[type=area_effect_cloud,tag=rule_display,tag=spawn,distance=..0.1,limit=1] CustomName set from entity 89fd5d65-fc19-4848-8c51-e72ea0c1d85c HandItems[0].tag.display.Name
execute positioned ~ ~0.25 ~ run tag @e[type=area_effect_cloud,tag=rule_display,tag=spawn,distance=..0.1,limit=1] remove spawn

summon area_effect_cloud ~ ~ ~ {Tags:["rule_display","spawn"],Duration:100,CustomNameVisible:1b}
scoreboard players operation text_id baba = @s text_id
item modify entity 89fd5d65-fc19-4848-8c51-e72ea0c1d85c weapon.mainhand baba:dev/text_display_id
data modify entity @e[type=area_effect_cloud,tag=rule_display,tag=spawn,distance=..0.1,limit=1] CustomName set from entity 89fd5d65-fc19-4848-8c51-e72ea0c1d85c HandItems[0].tag.display.Name
tag @e[type=area_effect_cloud,tag=rule_display,tag=spawn,distance=..0.1,limit=1] remove spawn

summon area_effect_cloud ~ ~0.5 ~ {Tags:["rule_display","spawn"],Duration:100,CustomNameVisible:1b}
scoreboard players operation text_used baba = @s text_used
item modify entity 89fd5d65-fc19-4848-8c51-e72ea0c1d85c weapon.mainhand baba:dev/text_display_used
execute positioned ~ ~0.5 ~ run data modify entity @e[type=area_effect_cloud,tag=rule_display,tag=spawn,distance=..0.1,limit=1] CustomName set from entity 89fd5d65-fc19-4848-8c51-e72ea0c1d85c HandItems[0].tag.display.Name
execute positioned ~ ~0.5 ~ run tag @e[type=area_effect_cloud,tag=rule_display,tag=spawn,distance=..0.1,limit=1] remove spawn
