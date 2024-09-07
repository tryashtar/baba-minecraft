scoreboard players set @s wait 0
item replace entity @s weapon.mainhand with apple
kill @e[type=item,distance=..2]
scoreboard players set direction baba 0
function baba:input/step
execute if score rules_changed baba matches 1 run function baba:input/update_rules
execute at @e[type=#baba:object,tag=baba.object,tag=prop.select] as @e[type=#baba:object,tag=baba.object,distance=..0.1,predicate=baba:has_level_data,limit=1] run function baba:progress/enter_level
scoreboard players set @s move_cooldown 3
