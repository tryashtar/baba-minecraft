data modify storage baba:main condition set from storage baba:main conditions[0]
scoreboard players set passed baba 0

# rules without conditions don't need to be re-assigned every step
# but rules with conditions do if the state of the object changes
# so we mark the object for re-assign if it changes in certain ways next step
execute if data storage baba:main condition{condition:180392} if score direction baba matches 0 run scoreboard players set passed baba 1
execute if data storage baba:main condition{condition:180392} run tag @s add assign_idle
execute if data storage baba:main condition{condition:180438055} unless entity @e[type=item_display,tag=baba.object,tag=!self,distance=..0.1] run scoreboard players set passed baba 1
execute if data storage baba:main condition{condition:180438055} run tag @s add assign_move
execute if data storage baba:main condition{condition:8104442} if predicate baba:often run scoreboard players set passed baba 1
execute if data storage baba:main condition{condition:8104442} run tag @s add assign_always
execute if data storage baba:main condition{condition:275525968} if predicate baba:seldom run scoreboard players set passed baba 1
execute if data storage baba:main condition{condition:275525968} run tag @s add assign_always

# these conditions can require multiple params, in which case any object can only count once
execute if data storage baba:main condition{condition:-100} run function baba:board/rules/apply/check/without
execute if data storage baba:main condition{condition:-100} run tag @s add assign_always
tag @e[type=item_display,tag=baba.object,tag=used] remove used
execute if data storage baba:main condition{condition:279252} run function baba:board/rules/apply/check/near
execute if data storage baba:main condition{condition:279252} run tag @s add assign_move
tag @e[type=item_display,tag=baba.object,tag=used] remove used
execute if data storage baba:main condition{condition:419} run function baba:board/rules/apply/check/on
execute if data storage baba:main condition{condition:419} run tag @s add assign_move
tag @e[type=item_display,tag=baba.object,tag=used] remove used
execute if data storage baba:main condition{condition:86690878} run function baba:board/rules/apply/check/facing
execute if data storage baba:main condition{condition:86690878} run tag @s add assign_move
tag @e[type=item_display,tag=baba.object,tag=used] remove used
execute if score passed baba matches 0 if data storage baba:main condition{inverted:0b} run scoreboard players set affected baba 0
execute if score passed baba matches 1 if data storage baba:main condition{inverted:1b} run scoreboard players set affected baba 0

# this function and its subfunctions break early if a condition fails
data remove storage baba:main conditions[0]
execute if score affected baba matches 1 if data storage baba:main conditions[0] run function baba:board/rules/apply/check/conditions
