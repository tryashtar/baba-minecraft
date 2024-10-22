execute if score has_hitter baba matches 1 on attacker run scoreboard players set @s undo 1
execute if score has_hitter baba matches 2 on target at @s run scoreboard players set @s wait 1
data remove entity @s attack
data remove entity @s interaction
