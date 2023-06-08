scoreboard players set spawn baba 0
tag @s add self
function baba:dev/rules/display/move
tag @s remove self
execute if score debug_disabled baba matches 0 run data modify entity @s text set value '[{"nbt":"debug_text","storage":"baba:main"},"\\n",{"score":{"name":"debug_id","objective":"baba"},"color":"gray"},"\\n",{"score":{"name":"debug_used","objective":"baba"},"color":"yellow"}]'
execute if score debug_disabled baba matches 0 if score debug_used baba matches 0 run data modify entity @s text set value '[{"nbt":"debug_text","storage":"baba:main"},"\\n",{"score":{"name":"debug_id","objective":"baba"},"color":"gray"}]'
execute if score debug_disabled baba matches 0 if score debug_used baba matches 1.. run data modify entity @s text set value '[{"nbt":"debug_text","storage":"baba:main"},"\\n",{"score":{"name":"debug_id","objective":"baba"},"color":"gray"},"\\n",{"score":{"name":"debug_used","objective":"baba"},"color":"yellow"}]'
execute if score debug_disabled baba matches 1.. run data modify entity @s text set value '[{"nbt":"debug_text","storage":"baba:main"},"\\n",{"score":{"name":"debug_id","objective":"baba"},"color":"gray"},"\\n",{"score":{"name":"debug_disabled","objective":"baba"},"color":"red"},{"text":" / ","color":"gray"},{"score":{"name":"debug_used","objective":"baba"},"color":"yellow"}]'
tag @s remove new
