tag @s remove hold_up
scoreboard players set @s facing 0
execute if entity @s[tag=hold_down] run scoreboard players set @s facing 2
execute if entity @s[tag=hold_left] run scoreboard players set @s facing 3
execute if entity @s[tag=hold_right] run scoreboard players set @s facing 4
