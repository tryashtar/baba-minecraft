scoreboard players remove move_cooldown baba 1
execute as @a[scores={win=1..}] run function baba:progress/win
execute as @a[nbt={OnGround:1b}] at @s run function baba:input/check
scoreboard players remove @e[type=item_display,tag=baba.object,scores={move_frame=0..}] move_frame 1
