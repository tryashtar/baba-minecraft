scoreboard players set @s drop 0
item replace entity @s weapon.mainhand with diamond
kill @e[type=item,distance=..2]
execute if score move_cooldown baba matches ..0 as @e[type=marker,tag=baba.space] at @s run function baba:board/history/undo
tag @e[type=armor_stand,tag=baba.object,scores={sprite=30442}] add reparse
execute if score move_cooldown baba matches ..0 run scoreboard players add @e[type=armor_stand,tag=baba.object,nbt={HandItems:[{tag:{properties:["float"]}}]}] z_layer 100
execute if score move_cooldown baba matches ..0 if score text_enabled baba matches 1 run function baba:display/text/update
execute if score move_cooldown baba matches ..0 as @e[type=armor_stand,tag=baba.object] run function baba:display/stand/update
execute if score move_cooldown baba matches ..0 run scoreboard players remove @e[type=armor_stand,tag=baba.object,scores={z_layer=100..}] z_layer 100
execute if score move_cooldown baba matches ..0 run scoreboard players set move_cooldown baba 2
