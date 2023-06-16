# falling objects can interact with shut, open, and weak objects
# but not win, defeat, tele, swap, hot, melt
execute if score open baba matches 1 as @e[type=item_display,tag=baba.object,distance=..0.1,tag=prop.shut] if score @s float_level = float baba run tag @s add open
execute if score shut baba matches 1 as @e[type=item_display,tag=baba.object,distance=..0.1,tag=prop.open] if score @s float_level = float baba run tag @s add open
execute if entity @e[type=item_display,tag=baba.object,tag=open,limit=1] run function baba:board/movement/move_here
execute if entity @e[type=item_display,tag=baba.object,tag=open,limit=1] run function baba:board/interact/open
execute if entity @e[type=item_display,tag=baba.object,tag=!falling,distance=..0.1,tag=prop.weak,limit=1] as @a at @s run playsound baba:defeat master @s
execute as @e[type=item_display,tag=baba.object,tag=!falling,distance=..0.1,tag=prop.weak] run function baba:board/interact/destroy

# recurse until we find a blocker or the edge of the level
execute positioned ~-1 ~ ~ as @e[type=item_display,tag=baba.object,tag=!can_move,distance=..0.1] run function baba:board/movement/check_blocker
execute unless block ~-1 ~-1 ~ #baba:board unless entity @e[type=item_display,tag=baba.object,tag=falling,distance=..0.1,limit=1] run function baba:board/movement/move_here
execute if block ~-1 ~-1 ~ #baba:board positioned ~-1 ~ ~ if entity @e[type=item_display,tag=baba.object,tag=blocker,distance=..0.1,limit=1] positioned ~1 ~ ~ unless entity @e[type=item_display,tag=baba.object,tag=falling,distance=..0.1,limit=1] run function baba:board/movement/move_here
execute if entity @s[tag=!removed] if block ~-1 ~-1 ~ #baba:board positioned ~-1 ~ ~ unless entity @e[type=item_display,tag=baba.object,tag=blocker,distance=..0.1,limit=1] run function baba:board/interact/fall_loop
