# wait for a player to punch or interact with the demo
scoreboard players set has_hitter baba 0
execute on attacker on vehicle if entity @s[tag=baba_mount] run scoreboard players set has_hitter baba 1
execute on target on vehicle if entity @s[tag=baba_mount] run scoreboard players set has_hitter baba 2
execute if score has_hitter baba matches 1..2 run function baba:booth/demo/input
