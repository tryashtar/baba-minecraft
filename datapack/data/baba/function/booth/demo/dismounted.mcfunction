execute if entity @s[tag=!in_menu] as @a[tag=baba_playing,distance=..40,limit=1] at @s run tp @s ~ ~ ~ 180 0
ride @a[tag=baba_playing,distance=..40,limit=1] mount @s
execute unless entity @a[tag=baba_playing,distance=..40,limit=1] run function baba:booth/demo/reset
execute if entity @s[tag=!in_menu] run function baba:booth/demo/show_menu
tag @s add in_menu
tag @a[tag=baba_playing,distance=..40] remove baba_playing
