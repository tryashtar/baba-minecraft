tag @s add self
scoreboard players operation float baba = @s float_level
scoreboard players set should_sink baba 0
execute as @e[type=item_display,tag=baba.object,tag=!self,distance=..0.1] if score @s float_level = float baba run scoreboard players set should_sink baba 1
execute as @e[type=item_display,tag=baba.object,tag=!self,distance=..0.1] if score @s float_level = float baba run function baba:board/interact/destroy
execute if score should_sink baba matches 1 run function baba:board/interact/do_sink
tag @s remove self
