data modify storage baba:main condition set from storage baba:main conditions[0]
scoreboard players set passed baba 0

# rules without conditions don't need to be re-assigned every step
# but rules with conditions do if the state of the object changes
# so we mark the object for re-assign if it changes in certain ways next step
execute if data storage baba:main condition{condition_text:"idle"} if score direction baba matches 0 run scoreboard players set passed baba 1
execute if data storage baba:main condition{condition_text:"idle"} run tag @s add assign_idle
execute if data storage baba:main condition{condition_text:"lonely"} if entity @e[type=item_display,tag=baba.object,tag=!self,distance=..0.1] run scoreboard players set passed baba 1
execute if data storage baba:main condition{condition_text:"lonely"} run tag @s add assign_move
execute if data storage baba:main condition{condition_text:"often"} if predicate baba:often run scoreboard players set passed baba 1
execute if data storage baba:main condition{condition_text:"often"} run tag @s add assign_always
execute if data storage baba:main condition{condition_text:"seldom"} if predicate baba:seldom run scoreboard players set passed baba 1
execute if data storage baba:main condition{condition_text:"seldom"} run tag @s add assign_always

# these conditions can require multiple params, in which case any object can only count once
execute if data storage baba:main condition{condition_text:"without"} run function baba:board/rules/apply/check/without
execute if data storage baba:main condition{condition_text:"without"} run tag @s add assign_always
tag @e[type=item_display,tag=baba.object,tag=used] remove used
execute if data storage baba:main condition{condition_text:"near"} run function baba:board/rules/apply/check/near
execute if data storage baba:main condition{condition_text:"near"} run tag @s add assign_move
tag @e[type=item_display,tag=baba.object,tag=used] remove used
execute if data storage baba:main condition{condition_text:"on"} run function baba:board/rules/apply/check/on
execute if data storage baba:main condition{condition_text:"on"} run tag @s add assign_move
tag @e[type=item_display,tag=baba.object,tag=used] remove used
execute if data storage baba:main condition{condition_text:"facing"} run function baba:board/rules/apply/check/facing
execute if data storage baba:main condition{condition_text:"facing"} run tag @s add assign_move
tag @e[type=item_display,tag=baba.object,tag=used] remove used
execute if score passed baba matches 0 if data storage baba:main condition{inverted:0b} run scoreboard players set affected baba 0
execute if score passed baba matches 1 if data storage baba:main condition{inverted:1b} run scoreboard players set affected baba 0

# this function and its subfunctions break early if a condition fails
data remove storage baba:main conditions[0]
execute if score affected baba matches 1 if data storage baba:main conditions[0] run function baba:board/rules/apply/check/conditions
