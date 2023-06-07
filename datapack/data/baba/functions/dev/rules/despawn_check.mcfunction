scoreboard players operation debug_id baba = @s text_id
scoreboard players set despawn baba 1
execute as @e[type=item_display,tag=baba.object,scores={sprite=397973}] if score @s text_id = debug_id baba run scoreboard players set despawn baba 0
execute if score despawn baba matches 1 run kill @s
