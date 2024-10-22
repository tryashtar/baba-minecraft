# wait for a player to punch or interact with the demo
scoreboard players set has_hitter baba 0
execute on attacker run scoreboard players set has_hitter baba 1
execute on target run scoreboard players set has_hitter baba 2
execute if score has_hitter baba matches 1..2 run function baba:booth/demo/start
