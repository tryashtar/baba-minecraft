scoreboard players operation direction baba = @s facing
function baba:board/step
execute if score rules_changed baba matches 1 run function baba:input/update_rules
scoreboard players set @s move_cooldown 3
