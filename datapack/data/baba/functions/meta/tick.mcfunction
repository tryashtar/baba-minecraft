scoreboard players remove move_cooldown baba 1
execute as @a[scores={win=1..}] run function baba:progress/win
execute as @a[nbt={OnGround:1b}] at @s run function baba:input/check
