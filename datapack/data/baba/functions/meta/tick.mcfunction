scoreboard players add tick baba 1
scoreboard players operation last_anim baba = anim baba
scoreboard players operation anim baba = tick baba
scoreboard players operation anim baba /= #4 baba
scoreboard players operation anim baba %= #3 baba
scoreboard players remove move_cooldown baba 1
execute as @a[scores={win=1..}] run function baba:progress/win
execute as @a[nbt={OnGround:1b}] at @s run function baba:input/check
scoreboard players remove @e[type=item_display,tag=baba.object,scores={move_frame=0..}] move_frame 1
