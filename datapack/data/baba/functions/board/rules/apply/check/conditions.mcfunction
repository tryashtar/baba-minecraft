data modify storage baba:main condition set from storage baba:main conditions[0]
scoreboard players set passed baba 0

execute if data storage baba:main condition{condition_text:"lonely"} if entity @e[type=marker,tag=baba.object,tag=!self,distance=..0.1] run scoreboard players set passed baba 1
execute if data storage baba:main condition{condition_text:"near"} run function baba:board/rules/apply/check/near
execute if data storage baba:main condition{condition_text:"on"} run function baba:board/rules/apply/check/on
execute if data storage baba:main condition{condition_text:"facing"} run function baba:board/rules/apply/check/facing
execute if score passed baba matches 0 if data storage baba:main condition{inverted:0b} run scoreboard players set affected baba 0
execute if score passed baba matches 1 if data storage baba:main condition{inverted:1b} run scoreboard players set affected baba 0

# this function and its subfunctions break early if a condition fails
data remove storage baba:main conditions[0]
execute if score affected baba matches 1 if data storage baba:main conditions[0] run function baba:board/rules/apply/check/conditions
