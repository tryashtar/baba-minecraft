tag @s remove hold_right
scoreboard players set @s facing 0
execute if entity @s[tag=hold_up] run scoreboard players set @s facing 1
execute if entity @s[tag=hold_down] run scoreboard players set @s facing 2
execute if entity @s[tag=hold_left] run scoreboard players set @s facing 3
scoreboard players set @s move_cooldown 1
