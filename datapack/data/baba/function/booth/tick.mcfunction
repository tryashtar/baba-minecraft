# door logic:
execute if score door_status baba matches 0 run function baba:booth/door/closed_tick
execute if score door_status baba matches 1 run function baba:booth/door/opened_tick

# demo logic:
execute as @e[type=interaction,tag=baba_play,distance=..40,limit=1] at @s run function baba:booth/try/tick
execute as @e[type=item_display,tag=baba_mount,distance=..40,limit=1] on passengers at @s run function baba:input/input
