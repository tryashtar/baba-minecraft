scoreboard players set has_hitter baba 0
execute on attacker run scoreboard players set has_hitter baba 1
execute on target run scoreboard players set has_hitter baba 2

execute if score has_hitter baba matches 1 on attacker if entity @s[tag=!has_baba_hat] run give @s carved_pumpkin[custom_model_data=794001,item_name='{"text":"Baba Hat","font":"baba:font"}']
execute if score has_hitter baba matches 1 on attacker run tag @s add has_baba_hat
execute if score has_hitter baba matches 1 run data remove entity @s attack

execute if score has_hitter baba matches 2 on target if entity @s[tag=!has_baba_hat] run give @s carved_pumpkin[custom_model_data=794001,item_name='{"text":"Baba Hat","font":"baba:font"}']
execute if score has_hitter baba matches 2 on target run tag @s add has_baba_hat
execute if score has_hitter baba matches 2 run data remove entity @s interaction

scoreboard players add @s life 1
execute if block 65 73 -158 campfire[lit=true] run scoreboard players set @s life 0
execute if score @s life matches 600.. unless entity @a[distance=..5] run function baba:booth/restore_box
