scoreboard players operation z_layer baba = @s z_layer
execute as @e[type=armor_stand,tag=baba.object,tag=!drawn,distance=..1.5] if score @s z_layer < z_layer baba run function baba:display/text/try_object
execute if entity @s[tag=!drawn] run function baba:display/text/object
