scoreboard players operation float baba = @s float_level
execute as @e[type=item_display,tag=baba.object,distance=..0.1,tag=prop.you] if score @s float_level = float baba run scoreboard players set @a win 1
execute as @e[type=item_display,tag=baba.object,distance=..0.1,tag=prop.you] if score @s float_level = float baba as @a at @s run playsound baba:win master @s
