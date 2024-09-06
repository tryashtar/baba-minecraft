tag @s remove hold_left
scoreboard players set @s facing 0
execute if entity @s[tag=hold_up] run scoreboard players set @s facing 1
execute if entity @s[tag=hold_down] run scoreboard players set @s facing 2
execute if entity @s[tag=hold_right] run scoreboard players set @s facing 4
