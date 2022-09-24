scoreboard players add tick baba 1
scoreboard players operation last_anim baba = anim_baba
scoreboard players operation anim baba = tick baba
scoreboard players operation anim baba /= #4 baba
scoreboard players operation anim baba %= #3 baba
execute unless score last_anim baba = anim baba run function baba:text/update_anim
execute as @a[nbt={abilities:{flying:0b}}] at @s run function baba:input/check_move
item modify entity @a[predicate=baba:holding_tile] weapon.mainhand baba:infinite_tiles
