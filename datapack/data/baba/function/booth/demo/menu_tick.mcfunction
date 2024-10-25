scoreboard players set has_rider baba 1
tag @s add baba_playing
execute as @e[type=interaction,tag=baba_demo,distance=..40,limit=3] at @s run function baba:booth/demo/menu_input_check
