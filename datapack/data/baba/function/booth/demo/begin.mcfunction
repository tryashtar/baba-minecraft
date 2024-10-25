# start the demo
tp @s ~ ~ ~ 180 0
ride @s mount @e[type=item_display,tag=baba_mount,distance=..10,limit=1]
tag @s remove hold_up
tag @s remove hold_down
tag @s remove hold_left
tag @s remove hold_right
scoreboard players set @s undo 0
scoreboard players set @s wait 0
scoreboard players set @s move_cooldown 0
scoreboard players set @s facing 0
