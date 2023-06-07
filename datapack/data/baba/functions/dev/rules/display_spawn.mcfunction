data modify storage baba:main debug_text set from entity @s item.tag.text
scoreboard players operation debug_id baba = @s text_id
scoreboard players operation debug_used baba = @s text_used
scoreboard players operation debug_disabled baba = @s text_disabled
execute unless entity @e[type=text_display,tag=rule_display,distance=..0.01,limit=1] run summon text_display ~ ~ ~ {Tags:["rule_display"],Rotation:[90f,0f]}
execute if score debug_disabled baba matches 0 run data modify entity @e[type=text_display,tag=rule_display,distance=..0.01,limit=1] text set value '[{"nbt":"debug_text","storage":"baba:main"},"\\n",{"score":{"name":"debug_id","objective":"baba"}},"\\n",{"score":{"name":"debug_used","objective":"baba"},"color":"yellow"}]'
execute if score debug_disabled baba matches 1.. run data modify entity @e[type=text_display,tag=rule_display,distance=..0.01,limit=1] text set value '[{"nbt":"debug_text","storage":"baba:main"},"\\n",{"score":{"name":"debug_id","objective":"baba"}},"\\n",{"score":{"name":"debug_disabled","objective":"baba"},"color":"red"},{"text":" / ","color":"gray"},{"score":{"name":"debug_used","objective":"baba"},"color":"yellow"}]'
