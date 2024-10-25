scoreboard players set has_hitter baba 0
execute on attacker on vehicle if entity @s[tag=baba_mount] run scoreboard players set has_hitter baba 1
execute on target on vehicle if entity @s[tag=baba_mount] run scoreboard players set has_hitter baba 2

execute if entity @s[tag=baba_menu] if score has_hitter baba matches 1..2 run playsound baba:enter_level master @a 75 74 -162
execute if entity @s[tag=baba_menu] if score has_hitter baba matches 1..2 run data modify storage baba:main load_level set value "map"
execute if entity @s[tag=baba_menu] if score has_hitter baba matches 1..2 run scoreboard players set load_timer baba 23
execute if entity @s[tag=baba_menu] if score has_hitter baba matches 1..2 run function baba:booth/demo/close_menu

execute if entity @s[tag=baba_quit] if score has_hitter baba matches 1..2 run tp @a[tag=baba_playing,distance=..40] 75.5 71.5 -156.5 180 0
execute if entity @s[tag=baba_quit] if score has_hitter baba matches 1..2 run playsound baba:defeat master @a 75 74 -162
execute if entity @s[tag=baba_quit] if score has_hitter baba matches 1..2 run function baba:booth/demo/reset

execute if entity @s[tag=baba_resume] if score has_hitter baba matches 1..2 run function baba:booth/demo/close_menu
