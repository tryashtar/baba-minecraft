tag @s add self
execute if entity @e[type=item_display,tag=baba.object,tag=!self,distance=..0.1,limit=1] run scoreboard players add destroyed baba 1
execute if entity @e[type=item_display,tag=baba.object,tag=!self,distance=..0.1,limit=1] run function baba:board/interact/destroy
tag @s remove self
