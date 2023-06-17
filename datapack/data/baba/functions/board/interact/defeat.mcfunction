scoreboard players operation float baba = @s float_level
execute as @e[type=#baba:object,tag=baba.object,distance=..0.1,tag=prop.you] if score @s float_level = float baba run scoreboard players add destroyed baba 1
execute as @e[type=#baba:object,tag=baba.object,distance=..0.1,tag=prop.you] if score @s float_level = float baba run function baba:board/interact/destroy
