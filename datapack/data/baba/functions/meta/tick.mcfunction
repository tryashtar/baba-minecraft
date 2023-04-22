scoreboard players add tick baba 1
scoreboard players operation last_anim baba = anim baba
scoreboard players operation anim baba = tick baba
scoreboard players operation anim baba /= #4 baba
scoreboard players operation anim baba %= #3 baba
execute if score text_enabled baba matches 1 unless score last_anim baba = anim baba run function baba:display/text/anim
scoreboard players remove move_cooldown baba 1
execute as @a[scores={win=1..}] run function baba:progress/win
execute as @a[nbt={OnGround:1b}] at @s run function baba:input/check
execute if score text_enabled baba matches 1 if entity @e[type=item_display,tag=baba.object,scores={move_frame=0..}] run scoreboard players add @e[type=item_display,tag=baba.object,scores={float_level=1..}] z_layer 100
execute if score text_enabled baba matches 1 if entity @e[type=item_display,tag=baba.object,scores={move_frame=0..}] run function baba:display/text/update
execute if score text_enabled baba matches 1 if entity @e[type=item_display,tag=baba.object,scores={move_frame=0..}] run scoreboard players remove @e[type=item_display,tag=baba.object,scores={z_layer=100..}] z_layer 100
scoreboard players remove @e[type=item_display,tag=baba.object,scores={move_frame=0..}] move_frame 1
