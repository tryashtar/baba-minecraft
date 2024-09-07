# falling objects can interact with shut, open, and weak objects
# but not win, defeat, tele, swap, hot, melt
execute if score open baba matches 1 run tag @e[type=#baba:object,tag=baba.object,tag=active,tag=prop.shut,predicate=baba:match_score/float_level,distance=..0.1] add open
execute if score shut baba matches 1 run tag @e[type=#baba:object,tag=baba.object,tag=active,tag=prop.open,predicate=baba:match_score/float_level,distance=..0.1] add open
execute if entity @e[type=#baba:object,tag=baba.object,tag=active,tag=open,limit=1] run function baba:board/movement/move_here
execute if entity @e[type=#baba:object,tag=baba.object,tag=active,tag=open,limit=1] run function baba:board/interact/open
execute if entity @e[type=#baba:object,tag=baba.object,tag=active,tag=!falling,tag=prop.weak,predicate=baba:match_score/float_level,distance=..0.1,limit=1] run scoreboard players add destroyed baba 1
execute as @e[type=#baba:object,tag=baba.object,tag=active,tag=!falling,tag=prop.weak,predicate=baba:match_score/float_level,distance=..0.1] run function baba:board/interact/destroy

# recurse until we find a blocker or the edge of the level
execute positioned ~-1 ~ ~ as @e[type=#baba:object,tag=baba.object,tag=active,tag=!can_move,distance=..0.1] run function baba:board/movement/check_blocker
execute unless block ~-1 ~-1 ~ #baba:board unless entity @e[type=#baba:object,tag=baba.object,tag=active,tag=falling,distance=..0.1,limit=1] run function baba:board/movement/move_here
execute if block ~-1 ~-1 ~ #baba:board positioned ~-1 ~ ~ if entity @e[type=#baba:object,tag=baba.object,tag=active,tag=blocker,distance=..0.1,limit=1] positioned ~1 ~ ~ unless entity @e[type=#baba:object,tag=baba.object,tag=active,tag=falling,distance=..0.1,limit=1] run function baba:board/movement/move_here
execute if entity @s[tag=!removed] if block ~-1 ~-1 ~ #baba:board positioned ~-1 ~ ~ unless entity @e[type=#baba:object,tag=baba.object,tag=active,tag=blocker,distance=..0.1,limit=1] run function baba:board/interact/fall_loop
