scoreboard players set direction baba 0
function baba:board/step
function baba:input/update_rules
scoreboard players set entered_level baba 0
execute at @e[type=item_display,tag=baba.object,tag=prop.select] as @e[type=item_display,tag=baba.object,distance=..0.1,nbt={item:{tag:{level_data:{}}}},limit=1] run function baba:progress/enter_level
execute if score entered_level baba matches 1 run tag @s add consume_wait
scoreboard players set @s move_cooldown 3
