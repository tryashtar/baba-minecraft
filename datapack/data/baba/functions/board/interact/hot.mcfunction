scoreboard players operation float baba = @s float_level
execute as @e[type=item_display,tag=baba.object,distance=..0.1,tag=prop.melt] if score @s float_level = float baba run function baba:board/interact/melt
