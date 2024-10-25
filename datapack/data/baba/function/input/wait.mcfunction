scoreboard players set @s wait 0
scoreboard players set direction baba 0
function baba:input/step
execute if score rules_changed baba matches 1 run function baba:input/update_rules
execute at @e[type=#baba:object,tag=baba.object,tag=prop.select,x=63.0,y=67.0,z=-168.0,dx=24,dy=14,dz=1] as @e[type=#baba:object,tag=baba.object,distance=..0.1,predicate=baba:has_level_data,limit=1] run function baba:booth/demo/enter_level
scoreboard players set @s move_cooldown 3
