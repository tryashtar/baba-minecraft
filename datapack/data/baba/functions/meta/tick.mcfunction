scoreboard players add tick baba 1
scoreboard players operation last_anim baba = anim_baba
scoreboard players operation anim baba = tick baba
scoreboard players operation anim baba /= #4 baba
scoreboard players operation anim baba %= #3 baba
execute unless score last_anim baba = anim baba run function baba:display/update_anim
scoreboard players remove move_cooldown baba 1
execute as @a[nbt={abilities:{flying:0b}}] at @s run function baba:input/check
item modify entity @a[predicate=baba:holding_tile] weapon.mainhand baba:infinite_tiles
