scoreboard players operation text_id baba = @s text_id
scoreboard players operation debug_used baba = @s text_used
scoreboard players operation debug_disabled baba = @s text_disabled
data modify storage baba:main debug_text set from entity @s item.components."minecraft:custom_data".baba.text
scoreboard players set spawn baba 1
execute as @e[type=text_display,tag=rule_display,predicate=baba:match_score/text_id] run function baba:dev/rules/display/update
execute if score spawn baba matches 1 run function baba:dev/rules/display/spawn
