tag @s remove hold_down
scoreboard players set @s facing 0
execute if entity @s[tag=hold_up] run scoreboard players set @s facing 1
execute if entity @s[tag=hold_left] run scoreboard players set @s facing 3
execute if entity @s[tag=hold_right] run scoreboard players set @s facing 4
